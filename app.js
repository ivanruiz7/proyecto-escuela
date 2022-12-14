var createError = require('http-errors');
var express = require('express');
var path = require('path');
var cookieParser = require('cookie-parser');
var logger = require('morgan');

require('dotenv').config();
var session = require ('express-session');

var indexRouter = require('./routes/index');

var docentesrouter = require('./routes/docentes');
var instalacionesrouter = require('./routes/instalaciones');
var galeriarouter = require('./routes/galeria');
var efemeridesrouter = require('./routes/efemerides');
var contactorouter = require('./routes/contacto');
var loginrouter = require('./routes/admin/login');
var adminRouter = require('./routes/admin/novedades');
var newuserrouter = require('./routes/admin/newuser');

var app = express();

// view engine setup
app.set('views', path.join(__dirname, 'views'));
app.set('view engine', 'hbs');

app.use(logger('dev'));
app.use(express.json());
app.use(express.urlencoded({ extended: false }));
app.use(cookieParser());
app.use(express.static(path.join(__dirname, 'public')));

app.use(session ({
  secret: 'mauqpnht213trq',
  resave: false , 
  saveUninitialized:true
}))
secured = async (req,res,next) => {
  try{
    console.log(req.session.id_usuario);
    if (req.session.id_usuario) {
      next();
    } else {res.redirect('/admin/login');
  }
} catch (error) {
  console.log (error);
}
}


app.use('/', indexRouter);

app.use('/docentes', docentesrouter);
app.use('/instalaciones', instalacionesrouter);
app.use('/galeria', galeriarouter );
app.use('/efemerides', efemeridesrouter);
app.use('/contacto', contactorouter);
app.use('/admin/login',loginrouter);
app.use('/admin/novedades',secured,adminRouter);
app.use('/admin/newuser',newuserrouter)

// catch 404 and forward to error handler
app.use(function(req, res, next) {
  next(createError(404));
});

// error handler
app.use(function(err, req, res, next) {
  // set locals, only providing error in development
  res.locals.message = err.message;
  res.locals.error = req.app.get('env') === 'development' ? err : {};

  // render the error page
  res.status(err.status || 500);
  res.render('error');
});

module.exports = app;
