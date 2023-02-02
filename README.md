
# Moss Submission Script

A simple bash script to process canvas submission files of IntelliJ projects and submit them to [Stanford's MOSS](https://theory.stanford.edu/~aiken/moss/) for plagiarism detection. `moss.sh` simply serves as a wrapper which prepares canvas downloads to be submitted to Stanford's perl script (`submit.pl`).

Created while serving as a Learning Assistant for IST242, Intermediate Object Oriented App Development.


## Usage/Examples

`moss.sh` can be used to submit an arbitrary amount of section's submissions, each argument must be a zip file of zip files containing student submissions. Student submissions should be properly exported IntelliJ projects, and not a bare .java file, and are compared by directory.

Submitting a single zip file:

```shell
./moss.sh ~/Downloads/lfgberg/submissions.zip
```

Submitting multiple sections:

```shell
./moss.sh ~/Downloads/lfgberg/section1.zip ~/Downloads/lfgberg/section2.zip ~/Downloads/lfgberg/section3.zip
```



## Screenshots
Example CLI Output:
![Example CLI output](/images/output.png)

Example MOSS Listing:
![Example Student Listings](/images/report_listing.png)

Example Matching Code:
![Example Matching Code](/images/matching_lines.png)
## Authors

- [Liam Geyer](https://www.github.com/lfgberg)

