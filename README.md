# Hadoop class at DSTI.

There are not many records related to HDFS here, but it is the underlying structure for YARN and Hive.

To see YARN in action, there are mapper and reducer functions written in python, which are used by a provided jar file to make it possible to code the functions in python rather than in java.
The mapper and reducer were made to do a word count on a sample text.
After downloading the text (http://www.gutenberg.org/ebooks/search/?sort_order=downloads) on the edge node, it is put on HDFS. Then these python files were created and the output gives words from the text file with the associated count.

For Hive (using beeline as client), there is a procedure for transformation of data. The data is in a csv file on HDFS, so we create a schema for Hive to point at it. Then another schema is produced for the data, but in an ORC format. Finally the data from the CSV is copied into the ORC database. See 'HQL.txt'. You can imagine a data ingestion process being done this way.
After, we use Hive to query the imdb data that is on HDFS. Several queries are constructed and ran using beeline. See 'HQL_ext.txt' and 'hqlfiles' folder for queries.
