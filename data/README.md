# Data Folder Structure

This folder should have the following structure:<br>
![https://ibb.co/xsq4NKB](https://i.ibb.co/8BghHnf/tree.png)<br>

For folders in mono, there should only be one file that follows the pattern `all.{language_id}`, example: `all.jv` for the jv folder.<br>
For folders in para, there should be six files that follows these patterns:
- `[test/train/valid].[SRC]-[TGT].[SRC]`, ex: `test.id-jv.id`
- `[test/train/valid].[SRC]-[TGT].[TGT]`, ex: `test.id-jv.jv`

The folder named `processed` will be created by `process-data.sh`.
