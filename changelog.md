# Changelog

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/).


## [git] - 2020-04-08
### Changed
- Upgrade all packages:
  `node wipe-dependencies.js && rm -rf node_modules && npm update --save-dev && npm update --save`
  as per
  <https://medium.com/@jh3y/how-to-update-all-npm-packages-in-your-project-at-once-17a8981860ea>


## [git] - 2020-03-15
### Changed
- Split the app into a separate project (it was formerly in
  the webapp directory of EnlivenMinetest).


## [git] - 2019-03-19
### Added
- Upload skins (the server operates based on ENLIVEN if present,
  otherwise based on Bucket_Game).
- Choose existing skins, those being skins included in coderskins
  (`skin_*.png` where `*` is not a username).
- `npm install multer`: mv is no longer necessary--I had switched from
   fs.rename to mv due to rename not working across filesystems (tmp is
   commonly on a different volume), but then switched from formidable
   to multer since multer has built-in functionality to cancel upload
   if too large, but formidable crashes (see
   <https://stackoverflow.com/a/27067596/4541104>).
