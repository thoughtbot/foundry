var gulp = require('gulp');
var svgo = require('gulp-svgo');

gulp.task('default', function () {
    gulp.src('lib/*/**.svg')
        .pipe(svgo())
        .pipe(gulp.dest('dist'));
});
