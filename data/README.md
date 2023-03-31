# Data Folder Structure

This folder should have the following structure:<br>
![https://ibb.co/xsq4NKB](https://i.ibb.co/8BghHnf/tree.png)<br>

For folders in mono, there should only be one file that follows the pattern `all.{language_id}`, example: `all.jv` for the jv folder.<br>
For folders in para, there should be six files that follows these patterns:
- `[SRC]-[TGT].[SRC].[train/test/valid].untok`, ex: `id-jv.id.test.untok`
- `[SRC]-[TGT].[TGT].[train/test/valid].untok`, ex: `id-jv.id.test.untok`

The folder named `processed` will be created by `process-data.sh`.


# Our Data

Our data can be found in this google drive folder.
[TODO: Upload files to google drive, put link here]
