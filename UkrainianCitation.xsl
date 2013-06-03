<?xml version="1.0" ?> 
<!--List of the external resources that we are referencing-->
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" xmlns:b="http://schemas.openxmlformats.org/officeDocument/2006/bibliography">
   <!--When the bibliography or citation is in your document, it's just HTML-->
   <xsl:output method="html" encoding="us-ascii"/> 
   <!--Match the root element, and dispatch to its children-->
   <xsl:template match="/"> 
      <xsl:apply-templates select="*" /> 
   </xsl:template>
   <!--Set an optional version number for this style-->
   <xsl:template match="b:version"> 
      <xsl:text>2013.6.3</xsl:text> 
   </xsl:template> 
   <!--Defines the name of the style in the References dropdown-->
   <xsl:template match="b:StyleName">     
      <xsl:text>Ukrainian Citation</xsl:text> 
   </xsl:template> 
   <!--Specifies which fields should appear in the Create Source dialog when in a collapsed state (The Show All Bibliography Fieldscheckbox is cleared)-->
<xsl:template match="b:GetImportantFields[b:SourceType = 'Book']"> 
      <b:ImportantFields> 
         <b:ImportantField><xsl:text>b:Author/b:Author/b:NameList</xsl:text> </b:ImportantField> 
         <b:ImportantField> <xsl:text>b:Title</xsl:text> </b:ImportantField> 
         <b:ImportantField> <xsl:text>b:Year</xsl:text> </b:ImportantField> 
         <b:ImportantField> <xsl:text>b:City</xsl:text> </b:ImportantField> 
         <b:ImportantField> <xsl:text>b:Publisher</xsl:text> </b:ImportantField> 
      </b:ImportantFields> 
</xsl:template>
   
   
   <!--Important Fields for Book Section -->
   
<xsl:template match="b:GetImportantFields[b:SourceType = 'BookSection']"> 
      <b:ImportantFields> 
         <b:ImportantField><xsl:text>b:Author/b:Author/b:NameList</xsl:text></b:ImportantField>
	 <b:ImportantField><xsl:text>b:Title</xsl:text></b:ImportantField>
	 <b:ImportantField><xsl:text>b:Author/b:BookAuthor/b:NameList</xsl:text></b:ImportantField>
	 <b:ImportantField><xsl:text>b:BookTitle</xsl:text></b:ImportantField>
	 <b:ImportantField><xsl:text>b:Year</xsl:text></b:ImportantField>
	 <b:ImportantField><xsl:text>b:Pages</xsl:text></b:ImportantField>
	 <b:ImportantField><xsl:text>b:City</xsl:text></b:ImportantField>
	 <b:ImportantField><xsl:text>b:Publisher</xsl:text></b:ImportantField>
      </b:ImportantFields> 
   </xsl:template>
   
      
    <!--Important Fields for Journal Article -->
   
<xsl:template match="b:GetImportantFields[b:SourceType = 'JournalArticle']"> 
      <b:ImportantFields> 
         <b:ImportantField><xsl:text>b:Author/b:Author/b:NameList</xsl:text></b:ImportantField>
	 <b:ImportantField><xsl:text>b:Title</xsl:text></b:ImportantField>
	 <b:ImportantField><xsl:text>b:JournalName</xsl:text></b:ImportantField>
	 <b:ImportantField><xsl:text>b:Year</xsl:text></b:ImportantField>
	 <b:ImportantField><xsl:text>b:Pages</xsl:text></b:ImportantField>
      </b:ImportantFields> 
   </xsl:template>
   
   
   <!--Important Fields for Article In A Periodical -->
   
<xsl:template match="b:GetImportantFields[b:SourceType = 'ArticleInAPeriodical']"> 
      <b:ImportantFields> 
         <b:ImportantField><xsl:text>b:Author/b:Author/b:NameList</xsl:text></b:ImportantField>
	 <b:ImportantField><xsl:text>b:Title</xsl:text></b:ImportantField>
	 <b:ImportantField><xsl:text>b:PeriodicalTitle</xsl:text></b:ImportantField>
	 <b:ImportantField><xsl:text>b:Year</xsl:text></b:ImportantField>
	 <b:ImportantField><xsl:text>b:Month</xsl:text></b:ImportantField>
	 <b:ImportantField><xsl:text>b:Day</xsl:text></b:ImportantField>
	 <b:ImportantField><xsl:text>b:Pages</xsl:text></b:ImportantField>
      </b:ImportantFields> 
</xsl:template>
   
   
   <!--Important Fields for Conference Proceedings -->
<xsl:template match="b:GetImportantFields[b:SourceType = 'ConferenceProceedings']"> 
      <b:ImportantFields> 
        <b:ImportantField><xsl:text>b:Author/b:Author/b:NameList</xsl:text></b:ImportantField>
	<b:ImportantField><xsl:text>b:Title</xsl:text></b:ImportantField>
	<b:ImportantField><xsl:text>b:Pages</xsl:text></b:ImportantField>
	<b:ImportantField><xsl:text>b:Year</xsl:text></b:ImportantField>
	<b:ImportantField><xsl:text>b:ConferenceName</xsl:text></b:ImportantField>
	<b:ImportantField><xsl:text>b:City</xsl:text></b:ImportantField>
	<b:ImportantField><xsl:text>b:Publisher</xsl:text></b:ImportantField>
      </b:ImportantFields> 
</xsl:template>


<!--Important Fields for Report -->
<xsl:template match="b:GetImportantFields[b:SourceType = 'Report']"> 
      <b:ImportantFields> 
	  <b:ImportantField><xsl:text>b:Author/b:Author/b:NameList</xsl:text></b:ImportantField>
	  <b:ImportantField><xsl:text>b:Title</xsl:text></b:ImportantField>
	  <b:ImportantField><xsl:text>b:Year</xsl:text></b:ImportantField>
	  <b:ImportantField><xsl:text>b:Publisher</xsl:text></b:ImportantField>
	  <b:ImportantField><xsl:text>b:City</xsl:text></b:ImportantField>
	  <b:ImportantField><xsl:text>b:ThesisType</xsl:text></b:ImportantField>
      </b:ImportantFields> 
</xsl:template>


<!--Important Fields for Sound Recording -->
<xsl:template match="b:GetImportantFields[b:SourceType = 'SoundRecording']"> 
      <b:ImportantFields> 
	  <b:ImportantField><xsl:text>b:Author/b:Composer/b:NameList</xsl:text></b:ImportantField>
	  <b:ImportantField><xsl:text>b:Author/b:Conductor/b:NameList</xsl:text></b:ImportantField>
	  <b:ImportantField><xsl:text>b:Author/b:Performer/b:NameList</xsl:text></b:ImportantField>
	  <b:ImportantField><xsl:text>b:Title</xsl:text></b:ImportantField>
	  <b:ImportantField><xsl:text>b:Year</xsl:text></b:ImportantField>
      </b:ImportantFields> 
</xsl:template>



<!--Important Fields for Performance -->
<xsl:template match="b:GetImportantFields[b:SourceType = 'Performance']"> 
      <b:ImportantFields> 
	  <b:ImportantField><xsl:text>b:Title</xsl:text></b:ImportantField>
	  <b:ImportantField><xsl:text>b:Author/b:Writer/b:NameList</xsl:text></b:ImportantField>
	  <b:ImportantField><xsl:text>b:Author/b:Performer/b:NameList</xsl:text></b:ImportantField>
	  <b:ImportantField><xsl:text>b:Theater</xsl:text></b:ImportantField>
	  <b:ImportantField><xsl:text>b:City</xsl:text></b:ImportantField>
	  <b:ImportantField><xsl:text>b:Year</xsl:text></b:ImportantField>
	  <b:ImportantField><xsl:text>b:Month</xsl:text></b:ImportantField>
	  <b:ImportantField><xsl:text>b:Day</xsl:text></b:ImportantField>
      </b:ImportantFields> 
</xsl:template>



<!--Important Fields for Art -->
<xsl:template match="b:GetImportantFields[b:SourceType = 'Art']"> 
      <b:ImportantFields> 
	  <b:ImportantField><xsl:text>b:Author/b:Artist/b:NameList</xsl:text></b:ImportantField>
	  <b:ImportantField><xsl:text>b:Title</xsl:text></b:ImportantField>
	  <b:ImportantField><xsl:text>b:Institution</xsl:text></b:ImportantField>
	  <b:ImportantField><xsl:text>b:PublicationTitle</xsl:text></b:ImportantField>
	  <b:ImportantField><xsl:text>b:City</xsl:text></b:ImportantField>
	  <b:ImportantField><xsl:text>b:Year</xsl:text></b:ImportantField>
      </b:ImportantFields> 
</xsl:template>



<!--Important Fields for Document From Internet Site -->
<xsl:template match="b:GetImportantFields[b:SourceType = 'DocumentFromInternetSite']"> 
      <b:ImportantFields> 
	  <b:ImportantField><xsl:text>b:Author/b:Author/b:NameList</xsl:text></b:ImportantField>
	      <b:ImportantField><xsl:text>b:Title</xsl:text></b:ImportantField>
	      <b:ImportantField><xsl:text>b:InternetSiteTitle</xsl:text></b:ImportantField>
	      <b:ImportantField><xsl:text>b:Year</xsl:text></b:ImportantField>
	      <b:ImportantField><xsl:text>b:Month</xsl:text></b:ImportantField>
	      <b:ImportantField><xsl:text>b:Day</xsl:text></b:ImportantField>
	      <b:ImportantField><xsl:text>b:YearAccessed</xsl:text></b:ImportantField>
	      <b:ImportantField><xsl:text>b:MonthAccessed</xsl:text></b:ImportantField>
	      <b:ImportantField><xsl:text>b:DayAccessed</xsl:text></b:ImportantField>
	      <b:ImportantField><xsl:text>b:URL</xsl:text></b:ImportantField>
      </b:ImportantFields> 
</xsl:template>


<!--Important Fields for Internet Site -->
<xsl:template match="b:GetImportantFields[b:SourceType = 'InternetSite']"> 
      <b:ImportantFields> 
	 <b:ImportantField><xsl:text>b:Author/b:Author/b:NameList</xsl:text></b:ImportantField>
	<b:ImportantField><xsl:text>b:Title</xsl:text></b:ImportantField>
	<b:ImportantField><xsl:text>b:Year</xsl:text></b:ImportantField>
	<b:ImportantField><xsl:text>b:Month</xsl:text></b:ImportantField>
	<b:ImportantField><xsl:text>b:Day</xsl:text></b:ImportantField>
	<b:ImportantField><xsl:text>b:YearAccessed</xsl:text></b:ImportantField>
	<b:ImportantField><xsl:text>b:MonthAccessed</xsl:text></b:ImportantField>
	<b:ImportantField><xsl:text>b:DayAccessed</xsl:text></b:ImportantField>
	<b:ImportantField><xsl:text>b:URL</xsl:text></b:ImportantField>
      </b:ImportantFields> 
</xsl:template>


<!--Important Fields for Film -->
<xsl:template match="b:GetImportantFields[b:SourceType = 'Film']"> 
      <b:ImportantFields> 
	  <b:ImportantField><xsl:text>b:Title</xsl:text></b:ImportantField>
	  <b:ImportantField><xsl:text>b:Author/b:Performer/b:NameList</xsl:text></b:ImportantField>
	  <b:ImportantField><xsl:text>b:Author/b:Director/b:NameList</xsl:text></b:ImportantField>
	  <b:ImportantField><xsl:text>b:Year</xsl:text></b:ImportantField>
      </b:ImportantFields> 
</xsl:template>



<!--Important Fields for Interview -->
<xsl:template match="b:GetImportantFields[b:SourceType = 'Interview']"> 
      <b:ImportantFields> 
	  <b:ImportantField><xsl:text>b:Author/b:Interviewee/b:NameList</xsl:text></b:ImportantField>
	  <b:ImportantField><xsl:text>b:Title</xsl:text></b:ImportantField>
	  <b:ImportantField><xsl:text>b:Author/b:Interviewer/b:NameList</xsl:text></b:ImportantField>
	  <b:ImportantField><xsl:text>b:Year</xsl:text></b:ImportantField>
	  <b:ImportantField><xsl:text>b:Month</xsl:text></b:ImportantField>
	  <b:ImportantField><xsl:text>b:Day</xsl:text></b:ImportantField>
      </b:ImportantFields> 
</xsl:template>



<!--Important Fields for Patent -->
<xsl:template match="b:GetImportantFields[b:SourceType = 'Patent']"> 
      <b:ImportantFields> 
	  <b:ImportantField><xsl:text>b:Author/b:Inventor/b:NameList</xsl:text></b:ImportantField>
	  <b:ImportantField><xsl:text>b:Title</xsl:text></b:ImportantField>
	  <b:ImportantField><xsl:text>b:Year</xsl:text></b:ImportantField>
	  <b:ImportantField><xsl:text>b:Month</xsl:text></b:ImportantField>
	  <b:ImportantField><xsl:text>b:Day</xsl:text></b:ImportantField>
	  <b:ImportantField><xsl:text>b:CountryRegion</xsl:text></b:ImportantField>
	  <b:ImportantField><xsl:text>b:PatentNumber</xsl:text></b:ImportantField>
</b:ImportantFields> 
</xsl:template>



<!--Important Fields for Electronic Source -->
<xsl:template match="b:GetImportantFields[b:SourceType = 'ElectronicSource']"> 
      <b:ImportantFields> 
	  <b:ImportantField><xsl:text>b:Author/b:Author/b:NameList</xsl:text></b:ImportantField>
	  <b:ImportantField><xsl:text>b:Title</xsl:text></b:ImportantField>
	  <b:ImportantField><xsl:text>b:City</xsl:text></b:ImportantField>
	  <b:ImportantField><xsl:text>b:Year</xsl:text></b:ImportantField>
	  <b:ImportantField><xsl:text>b:Month</xsl:text></b:ImportantField>
	  <b:ImportantField><xsl:text>b:Day</xsl:text></b:ImportantField>
      </b:ImportantFields> 
</xsl:template>

<!--Important Fields for Case -->
<xsl:template match="b:GetImportantFields[b:SourceType = 'Case']"> 
      <b:ImportantFields> 
	  <b:ImportantField><xsl:text>b:Title</xsl:text></b:ImportantField>
	  <b:ImportantField><xsl:text>b:CaseNumber</xsl:text></b:ImportantField>
	  <b:ImportantField><xsl:text>b:Court</xsl:text></b:ImportantField>
	  <b:ImportantField><xsl:text>b:Year</xsl:text></b:ImportantField>
	  <b:ImportantField><xsl:text>b:Month</xsl:text></b:ImportantField>
	  <b:ImportantField><xsl:text>b:Day</xsl:text></b:ImportantField>
      </b:ImportantFields> 
</xsl:template>


<!--Important Fields for Misc -->
<xsl:template match="b:GetImportantFields[b:SourceType = 'Misc']"> 
      <b:ImportantFields> 
	  <b:ImportantField><xsl:text>b:Author/b:Author/b:NameList</xsl:text></b:ImportantField>
	      <b:ImportantField><xsl:text>b:Title</xsl:text></b:ImportantField>
	      <b:ImportantField><xsl:text>b:PublicationTitle</xsl:text></b:ImportantField>
	      <b:ImportantField><xsl:text>b:Year</xsl:text></b:ImportantField>
	      <b:ImportantField><xsl:text>b:Month</xsl:text></b:ImportantField>
	      <b:ImportantField><xsl:text>b:Day</xsl:text></b:ImportantField>
	      <b:ImportantField><xsl:text>b:City</xsl:text></b:ImportantField>
	      <b:ImportantField><xsl:text>b:Publisher</xsl:text></b:ImportantField>
      </b:ImportantFields> 
</xsl:template>

   
 <!--СЕКЦІЯ НИЖЧЕ ОПИСУЄ ЯК ВИГЛЯДАЄ СПИСОК ЛІТЕРАТУРИ!!!!!!!!! -->   
   
   <!--Defines the output format for a simple Book (in the Bibliography) with important fields defined-->
<xsl:template match="b:Source[b:SourceType = 'Book']">
   <!--Count the number of Corporate Authors (can only be 0 or 1-->
   <xsl:variable name="cCorporateAuthors">
      <xsl:value-of select="count(b:Author/b:Author/b:Corporate)" />
   </xsl:variable>
   <!--Label the paragraph as an Office Bibliography paragraph-->
   <p>
      <xsl:choose>
         <xsl:when test ="$cCorporateAuthors!=0">
         <!--When the corporate author exists display the corporate author-->
	    <i>
	    <xsl:value-of select="b:Author/b:Author/b:Corporate"/>
	    </i>
	    <xsl:text>. (</xsl:text>
         </xsl:when>
         <xsl:otherwise>
            <!--When the corporate author does not exist, display the normal author-->
            <i>
	    <xsl:value-of select="b:Author/b:Author/b:NameList/b:Person/b:Last"/>
            <xsl:text> </xsl:text>
            <xsl:value-of select="b:Author/b:Author/b:NameList/b:Person/b:First"/>
	    <xsl:value-of select="b:Author/b:Author/b:NameList/b:Person/b:Middle"/>
            </i>
	    <xsl:text> </xsl:text>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:value-of select="b:Title"/>
      <xsl:text>. </xsl:text>
      <xsl:text>/ </xsl:text>
      <i>
      <xsl:value-of select="b:Author/b:Author/b:NameList/b:Person/b:Last"/>
      <xsl:text> </xsl:text>
      <xsl:value-of select="b:Author/b:Author/b:NameList/b:Person/b:First"/>
      <xsl:value-of select="b:Author/b:Author/b:NameList/b:Person/b:Middle"/>
      </i>
      <xsl:text> - </xsl:text>
      <xsl:value-of select="b:City"/>
      <xsl:text>: </xsl:text>
      <xsl:value-of select="b:Publisher"/>
      <xsl:text>, </xsl:text>
      <xsl:value-of select="b:Year"/>
      <xsl:text>. - </xsl:text>
      <xsl:value-of select="b:Pages"/>
      <xsl:text> c.</xsl:text>
      </p>
</xsl:template>


   <!--Defines the output format for a Book Section (in the Bibliography) with important fields defined-->
<xsl:template match="b:Source[b:SourceType = 'BookSection']">
   <!--Count the number of Corporate Authors (can only be 0 or 1-->
   <xsl:variable name="cCorporateAuthors">
      <xsl:value-of select="count(b:Author/b:Author/b:Corporate)" />
   </xsl:variable>
   <!--Label the paragraph as an Office Bibliography paragraph-->
   <p>
      <xsl:choose>
         <xsl:when test ="$cCorporateAuthors!=0">
         <!--When the corporate author exists display the corporate author-->
	    <i>
	    <xsl:value-of select="b:Author/b:Author/b:Corporate"/>
	    </i>
	    <xsl:text>. (</xsl:text>
         </xsl:when>
         <xsl:otherwise>
            <!--When the corporate author does not exist, display the normal author-->
	    <i>
	    <xsl:value-of select="b:Author/b:Author/b:NameList/b:Person/b:Last"/>
            <xsl:text>, </xsl:text>
            <xsl:value-of select="b:Author/b:Author/b:NameList/b:Person/b:First"/>
	    <xsl:value-of select="b:Author/b:Author/b:NameList/b:Person/b:Middle"/>
	    </i>
	    <xsl:text>. (</xsl:text>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:value-of select="b:Title"/>
      <xsl:text>. </xsl:text>
      <xsl:text>/ </xsl:text>
      <i>
      <xsl:value-of select="b:Author/b:Author/b:NameList/b:Person/b:Last"/>
      <xsl:text> </xsl:text>
      <xsl:value-of select="b:Author/b:Author/b:NameList/b:Person/b:First"/>
      <xsl:value-of select="b:Author/b:Author/b:NameList/b:Person/b:Middle"/>
      </i>
      <xsl:text> - </xsl:text>
      <xsl:value-of select="b:City"/>
      <xsl:text>: </xsl:text>
      <xsl:value-of select="b:Publisher"/>
      <xsl:text>, </xsl:text>
      <xsl:value-of select="b:Year"/>
      <xsl:text>. - </xsl:text>
      <xsl:value-of select="b:Pages"/>
      <xsl:text> c.</xsl:text>
      </p>
   </xsl:template>


<!--Defines the output format for a Journal Article (in the Bibliography) with important fields defined-->
<xsl:template match="b:Source[b:SourceType = 'JournalArticle']">
   <!--Count the number of Corporate Authors (can only be 0 or 1-->
   <xsl:variable name="cCorporateAuthors">
      <xsl:value-of select="count(b:Author/b:Author/b:Corporate)" />
   </xsl:variable>
   <!--Label the paragraph as an Office Bibliography paragraph-->
   <p>
      <xsl:choose>
         <xsl:when test ="$cCorporateAuthors!=0">
         <!--When the corporate author exists display the corporate author-->
	    <i>
	    <xsl:value-of select="b:Author/b:Author/b:Corporate"/>
	    </i>
	    <xsl:text>. (</xsl:text>
         </xsl:when>
         <xsl:otherwise>
            <!--When the corporate author does not exist, display the normal author-->
	    <i>
	    <xsl:value-of select="b:Author/b:Author/b:NameList/b:Person/b:Last"/>
            <xsl:text>, </xsl:text>
            <xsl:value-of select="b:Author/b:Author/b:NameList/b:Person/b:First"/>
	    <xsl:value-of select="b:Author/b:Author/b:NameList/b:Person/b:Middle"/>
	    </i>
	    </xsl:otherwise>
      </xsl:choose>
      <xsl:text> </xsl:text>
      <xsl:value-of select="b:Title"/>
      <xsl:text> // </xsl:text>
      <xsl:value-of select="b:JournalName"/>
      <xsl:text>. </xsl:text>
      <xsl:value-of select="b:City"/>
      <xsl:text>: </xsl:text>
      <xsl:value-of select="b:Publisher"/>
      <xsl:text>, </xsl:text>
      <xsl:value-of select="b:Year"/>
      <xsl:text>. </xsl:text>
      <xsl:text> Випуск № </xsl:text>
      <xsl:value-of select="b:Issue"/>
      <xsl:text>. </xsl:text>
      <xsl:text>c. </xsl:text>
      <xsl:value-of select="b:Pages"/>
      </p>
   </xsl:template>   
   
 
   
<!--Defines the output format for an Article In APeriodical (in the Bibliography) with important fields defined-->
<xsl:template match="b:Source[b:SourceType = 'ArticleInAPeriodical']">
   <!--Count the number of Corporate Authors (can only be 0 or 1-->
   <xsl:variable name="cCorporateAuthors">
      <xsl:value-of select="count(b:Author/b:Author/b:Corporate)" />
   </xsl:variable>
   <!--Label the paragraph as an Office Bibliography paragraph-->
   <p>
      <xsl:choose>
         <xsl:when test ="$cCorporateAuthors!=0">
         <!--When the corporate author exists display the corporate author-->
	 <i>   
	 <xsl:value-of select="b:Author/b:Author/b:Corporate"/>
	 </i>
	 </xsl:when>
         <xsl:otherwise>
            <!--When the corporate author does not exist, display the normal author-->
            <i>
	    <xsl:value-of select="b:Author/b:Author/b:NameList/b:Person/b:Last"/>
            <xsl:text>, </xsl:text>
            <xsl:value-of select="b:Author/b:Author/b:NameList/b:Person/b:First"/>
	    <xsl:value-of select="b:Author/b:Author/b:NameList/b:Person/b:Middle"/>
	    </i>
            </xsl:otherwise>
      </xsl:choose>
      <xsl:text> </xsl:text>
      <xsl:value-of select="b:Title"/>
      <xsl:text>. </xsl:text>
      <xsl:text> // </xsl:text>
      <xsl:value-of select="b:PeriodicalTitle"/>
      <xsl:text>, </xsl:text>
      <xsl:value-of select="b:Year"/>
      <xsl:text>. </xsl:text>
      <xsl:text> Випуск № </xsl:text>
      <xsl:value-of select="b:Issue"/>
      <xsl:text>. </xsl:text>
      <xsl:text>c. </xsl:text>
      <xsl:value-of select="b:Pages"/>
      </p>
   </xsl:template>      
   

 <!--Defines the output format for Conference Proceedings (in the Bibliography) with important fields defined-->
<xsl:template match="b:Source[b:SourceType = 'ConferenceProceedings']">
   <!--Count the number of Corporate Authors (can only be 0 or 1-->
   <xsl:variable name="cCorporateAuthors">
      <xsl:value-of select="count(b:Author/b:Author/b:Corporate)" />
   </xsl:variable>
   <!--Label the paragraph as an Office Bibliography paragraph-->
   <p>
      <xsl:choose>
         <xsl:when test ="$cCorporateAuthors!=0">
         <!--When the corporate author exists display the corporate author-->
            <xsl:value-of select="b:Author/b:Author/b:Corporate"/>
            <xsl:text>. (</xsl:text>
         </xsl:when>
         <xsl:otherwise>
            <!--When the corporate author does not exist, display the normal author-->
            <xsl:value-of select="b:Author/b:Author/b:NameList/b:Person/b:Last"/>
            <xsl:text>, </xsl:text>
            <xsl:value-of select="b:Author/b:Author/b:NameList/b:Person/b:First"/>
            </xsl:otherwise>
      </xsl:choose>
      
      <i>
         <xsl:value-of select="b:Title"/>
         <xsl:text>. </xsl:text>
      </i> 
	 <xsl:value-of select="b:ConferenceName"/> 
         <xsl:value-of select="b:City"/>
         <xsl:text>: </xsl:text>
         <xsl:value-of select="b:Publisher"/>
	 <xsl:value-of select="b:Year"/>
	 <xsl:text>, </xsl:text>
	 <xsl:value-of select="b:Pages"/>
	 <xsl:text>c. </xsl:text>
         <xsl:text>.</xsl:text>
      </p>
</xsl:template>   
   
   
<!--Defines the output format for a Report (in the Bibliography) with important fields defined-->
<xsl:template match="b:Source[b:SourceType = 'Report']">
   <!--Count the number of Corporate Authors (can only be 0 or 1-->
   <xsl:variable name="cCorporateAuthors">
      <xsl:value-of select="count(b:Author/b:Author/b:Corporate)" />
   </xsl:variable>
   <!--Label the paragraph as an Office Bibliography paragraph-->
   <p>
      <xsl:choose>
         <xsl:when test ="$cCorporateAuthors!=0">
         <!--When the corporate author exists display the corporate author-->
            <xsl:value-of select="b:Author/b:Author/b:Corporate"/>
            <xsl:text>. (</xsl:text>
         </xsl:when>
         <xsl:otherwise>
            <!--When the corporate author does not exist, display the normal author-->
            <xsl:value-of select="b:Author/b:Author/b:NameList/b:Person/b:Last"/>
            <xsl:text>, </xsl:text>
            <xsl:value-of select="b:Author/b:Author/b:NameList/b:Person/b:First"/>
            <xsl:text>. (</xsl:text>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:value-of select="b:Year"/>
      <xsl:text>). </xsl:text>
      <i>
         <xsl:value-of select="b:Title"/>
         <xsl:text>. </xsl:text>
      </i> 
         <xsl:value-of select="b:City"/>
         <xsl:text>: </xsl:text>
         <xsl:value-of select="b:Publisher"/>
         <xsl:text>.</xsl:text>
      </p>
   </xsl:template>   
   
   

<!--Defines the output format for a Sound Recording (in the Bibliography) with important fields defined-->
<xsl:template match="b:Source[b:SourceType = 'SoundRecording']">
   <!--Count the number of Corporate Authors (can only be 0 or 1-->
   <xsl:variable name="cCorporateAuthors">
      <xsl:value-of select="count(b:Author/b:Author/b:Corporate)" />
   </xsl:variable>
   <!--Label the paragraph as an Office Bibliography paragraph-->
   <p>
      <xsl:choose>
         <xsl:when test ="$cCorporateAuthors!=0">
         <!--When the corporate author exists display the corporate author-->
            <xsl:value-of select="b:Author/b:Author/b:Corporate"/>
            <xsl:text>. (</xsl:text>
         </xsl:when>
         <xsl:otherwise>
            <!--When the corporate author does not exist, display the normal author-->
            <xsl:value-of select="b:Author/b:Author/b:NameList/b:Person/b:Last"/>
            <xsl:text>, </xsl:text>
            <xsl:value-of select="b:Author/b:Author/b:NameList/b:Person/b:First"/>
            <xsl:text>. (</xsl:text>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:value-of select="b:Year"/>
      <xsl:text>). </xsl:text>
      <i>
         <xsl:value-of select="b:Title"/>
         <xsl:text>. </xsl:text>
      </i> 
         <xsl:value-of select="b:City"/>
         <xsl:text>: </xsl:text>
         <xsl:value-of select="b:Publisher"/>
         <xsl:text>.</xsl:text>
      </p>
   </xsl:template>      
   
   
<!--Defines the output format for a Performance (in the Bibliography) with important fields defined-->
<xsl:template match="b:Source[b:SourceType = 'Performance']">
   <!--Count the number of Corporate Authors (can only be 0 or 1-->
   <xsl:variable name="cCorporateAuthors">
      <xsl:value-of select="count(b:Author/b:Author/b:Corporate)" />
   </xsl:variable>
   <!--Label the paragraph as an Office Bibliography paragraph-->
   <p>
      <xsl:choose>
         <xsl:when test ="$cCorporateAuthors!=0">
         <!--When the corporate author exists display the corporate author-->
            <xsl:value-of select="b:Author/b:Author/b:Corporate"/>
            <xsl:text>. (</xsl:text>
         </xsl:when>
         <xsl:otherwise>
            <!--When the corporate author does not exist, display the normal author-->
            <xsl:value-of select="b:Author/b:Author/b:NameList/b:Person/b:Last"/>
            <xsl:text>, </xsl:text>
            <xsl:value-of select="b:Author/b:Author/b:NameList/b:Person/b:First"/>
            <xsl:text>. (</xsl:text>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:value-of select="b:Year"/>
      <xsl:text>). </xsl:text>
      <i>
         <xsl:value-of select="b:Title"/>
         <xsl:text>. </xsl:text>
      </i> 
         <xsl:value-of select="b:City"/>
         <xsl:text>: </xsl:text>
         <xsl:value-of select="b:Publisher"/>
         <xsl:text>.</xsl:text>
      </p>
   </xsl:template>      

   
   
<!--Defines the output format for a Art (in the Bibliography) with important fields defined-->
<xsl:template match="b:Source[b:SourceType = 'Art']">
   <!--Count the number of Corporate Authors (can only be 0 or 1-->
   <xsl:variable name="cCorporateAuthors">
      <xsl:value-of select="count(b:Author/b:Author/b:Corporate)" />
   </xsl:variable>
   <!--Label the paragraph as an Office Bibliography paragraph-->
   <p>
      <xsl:choose>
         <xsl:when test ="$cCorporateAuthors!=0">
         <!--When the corporate author exists display the corporate author-->
            <xsl:value-of select="b:Author/b:Author/b:Corporate"/>
            <xsl:text>. (</xsl:text>
         </xsl:when>
         <xsl:otherwise>
            <!--When the corporate author does not exist, display the normal author-->
            <xsl:value-of select="b:Author/b:Author/b:NameList/b:Person/b:Last"/>
            <xsl:text>, </xsl:text>
            <xsl:value-of select="b:Author/b:Author/b:NameList/b:Person/b:First"/>
            <xsl:text>. (</xsl:text>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:value-of select="b:Year"/>
      <xsl:text>). </xsl:text>
      <i>
         <xsl:value-of select="b:Title"/>
         <xsl:text>. </xsl:text>
      </i> 
         <xsl:value-of select="b:City"/>
         <xsl:text>: </xsl:text>
         <xsl:value-of select="b:Publisher"/>
         <xsl:text>.</xsl:text>
      </p>
   </xsl:template>      
   

<!--Defines the output format for a Document From Internet Site (in the Bibliography) with important fields defined-->
<xsl:template match="b:Source[b:SourceType = 'DocumentFromInternetSite']">
   <!--Count the number of Corporate Authors (can only be 0 or 1-->
   <xsl:variable name="cCorporateAuthors">
     <i> 
     <xsl:value-of select="count(b:Author/b:Author/b:Corporate)" />
      </i>
   </xsl:variable>
   <!--Label the paragraph as an Office Bibliography paragraph-->
   <p>
      <xsl:choose>
         <xsl:when test ="$cCorporateAuthors!=0">
         <!--When the corporate author exists display the corporate author-->
         <i>   
	 <xsl:value-of select="b:Author/b:Author/b:Corporate"/>
         </i>
	 </xsl:when>
         <xsl:otherwise>
            <!--When the corporate author does not exist, display the normal author-->
            <i> 
	    <xsl:value-of select="b:Author/b:Author/b:NameList/b:Person/b:Last"/>
            <xsl:text>, </xsl:text>
            <xsl:value-of select="b:Author/b:Author/b:NameList/b:Person/b:First"/>
	    <xsl:value-of select="b:Author/b:Author/b:NameList/b:Person/b:Middle"/>
	    </i> 
	    </xsl:otherwise>
      </xsl:choose>
      <xsl:text> </xsl:text>
      <xsl:value-of select="b:Title"/>
      <xsl:text>, </xsl:text>
      <xsl:text> Режим доступу: </xsl:text>
      <xsl:value-of select="b:URL"/>
    </p>
   </xsl:template>      
   

<!--Defines the output format for an InternetSite (in the Bibliography) with important fields defined-->
<xsl:template match="b:Source[b:SourceType = 'InternetSite']">
   <!--Count the number of Corporate Authors (can only be 0 or 1-->
   <xsl:variable name="cCorporateAuthors">
      <xsl:value-of select="count(b:Author/b:Author/b:Corporate)" />
   </xsl:variable>
   <!--Label the paragraph as an Office Bibliography paragraph-->
   <p>
      <xsl:choose>
         <xsl:when test ="$cCorporateAuthors!=0">
         <!--When the corporate author exists display the corporate author-->
	    <i>
	    <xsl:value-of select="b:Author/b:Author/b:Corporate"/>
	    </i>
	    <xsl:text>. (</xsl:text>
         </xsl:when>
         <xsl:otherwise>
            <!--When the corporate author does not exist, display the normal author-->
	    <i>
	    <xsl:value-of select="b:Author/b:Author/b:NameList/b:Person/b:Last"/>
            <xsl:text>, </xsl:text>
            <xsl:value-of select="b:Author/b:Author/b:NameList/b:Person/b:First"/>
	    </i>
	    <xsl:text>. (</xsl:text>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:value-of select="b:Year"/>
      <xsl:text>). </xsl:text>
      <i>
         <xsl:value-of select="b:Title"/>
         <xsl:text>. </xsl:text>
      </i> 
         <xsl:value-of select="b:City"/>
         <xsl:text>: </xsl:text>
         <xsl:value-of select="b:Publisher"/>
         <xsl:text>.</xsl:text>
      </p>
   </xsl:template>      
   
   
<!--Defines the output format for a Film (in the Bibliography) with important fields defined-->
<xsl:template match="b:Source[b:SourceType = 'Film']">
   <!--Count the number of Corporate Authors (can only be 0 or 1-->
   <xsl:variable name="cCorporateAuthors">
      <xsl:value-of select="count(b:Author/b:Author/b:Corporate)" />
   </xsl:variable>
   <!--Label the paragraph as an Office Bibliography paragraph-->
   <p>
      <xsl:choose>
         <xsl:when test ="$cCorporateAuthors!=0">
         <!--When the corporate author exists display the corporate author-->
            <xsl:value-of select="b:Author/b:Author/b:Corporate"/>
            <xsl:text>. (</xsl:text>
         </xsl:when>
         <xsl:otherwise>
            <!--When the corporate author does not exist, display the normal author-->
            <xsl:value-of select="b:Author/b:Author/b:NameList/b:Person/b:Last"/>
            <xsl:text>, </xsl:text>
            <xsl:value-of select="b:Author/b:Author/b:NameList/b:Person/b:First"/>
            <xsl:text>. (</xsl:text>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:value-of select="b:Year"/>
      <xsl:text>). </xsl:text>
      <i>
         <xsl:value-of select="b:Title"/>
         <xsl:text>. </xsl:text>
      </i> 
         <xsl:value-of select="b:City"/>
         <xsl:text>: </xsl:text>
         <xsl:value-of select="b:Publisher"/>
         <xsl:text>.</xsl:text>
      </p>
   </xsl:template>   
   

<!--Defines the output format for a Interview (in the Bibliography) with important fields defined-->
<xsl:template match="b:Source[b:SourceType = 'Interview']">
   <!--Count the number of Corporate Authors (can only be 0 or 1-->
   <xsl:variable name="cCorporateAuthors">
      <xsl:value-of select="count(b:Author/b:Author/b:Corporate)" />
   </xsl:variable>
   <!--Label the paragraph as an Office Bibliography paragraph-->
   <p>
      <xsl:choose>
         <xsl:when test ="$cCorporateAuthors!=0">
         <!--When the corporate author exists display the corporate author-->
            <xsl:value-of select="b:Author/b:Author/b:Corporate"/>
            <xsl:text>. (</xsl:text>
         </xsl:when>
         <xsl:otherwise>
            <!--When the corporate author does not exist, display the normal author-->
            <xsl:value-of select="b:Author/b:Author/b:NameList/b:Person/b:Last"/>
            <xsl:text>, </xsl:text>
            <xsl:value-of select="b:Author/b:Author/b:NameList/b:Person/b:First"/>
            <xsl:text>. (</xsl:text>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:value-of select="b:Year"/>
      <xsl:text>). </xsl:text>
      <i>
         <xsl:value-of select="b:Title"/>
         <xsl:text>. </xsl:text>
      </i> 
         <xsl:value-of select="b:City"/>
         <xsl:text>: </xsl:text>
         <xsl:value-of select="b:Publisher"/>
         <xsl:text>.</xsl:text>
      </p>
   </xsl:template>      
   
   
<!--Defines the output format for a Patent (in the Bibliography) with important fields defined-->
<xsl:template match="b:Source[b:SourceType = 'Patent']">
   <!--Count the number of Corporate Authors (can only be 0 or 1-->
   <xsl:variable name="cCorporateAuthors">
      <xsl:value-of select="count(b:Author/b:Author/b:Corporate)" />
   </xsl:variable>
   <!--Label the paragraph as an Office Bibliography paragraph-->
   <p>
      <xsl:choose>
         <xsl:when test ="$cCorporateAuthors!=0">
         <!--When the corporate author exists display the corporate author-->
            <xsl:value-of select="b:Author/b:Author/b:Corporate"/>
            <xsl:text>. (</xsl:text>
         </xsl:when>
         <xsl:otherwise>
            <!--When the corporate author does not exist, display the normal author-->
            <xsl:value-of select="b:Author/b:Author/b:NameList/b:Person/b:Last"/>
            <xsl:text>, </xsl:text>
            <xsl:value-of select="b:Author/b:Author/b:NameList/b:Person/b:First"/>
            <xsl:text>. (</xsl:text>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:value-of select="b:Year"/>
      <xsl:text>). </xsl:text>
      <i>
         <xsl:value-of select="b:Title"/>
         <xsl:text>. </xsl:text>
      </i> 
         <xsl:value-of select="b:City"/>
         <xsl:text>: </xsl:text>
         <xsl:value-of select="b:Publisher"/>
         <xsl:text>.</xsl:text>
      </p>
   </xsl:template>   
   
   

<!--Defines the output format for an Electronic Source (in the Bibliography) with important fields defined-->
<xsl:template match="b:Source[b:SourceType = 'ElectronicSource']">
   <!--Count the number of Corporate Authors (can only be 0 or 1-->
   <xsl:variable name="cCorporateAuthors">
      <xsl:value-of select="count(b:Author/b:Author/b:Corporate)" />
   </xsl:variable>
   <!--Label the paragraph as an Office Bibliography paragraph-->
   <p>
      <xsl:choose>
         <xsl:when test ="$cCorporateAuthors!=0">
         <!--When the corporate author exists display the corporate author-->
            <xsl:value-of select="b:Author/b:Author/b:Corporate"/>
            <xsl:text>. (</xsl:text>
         </xsl:when>
         <xsl:otherwise>
            <!--When the corporate author does not exist, display the normal author-->
            <xsl:value-of select="b:Author/b:Author/b:NameList/b:Person/b:Last"/>
            <xsl:text>, </xsl:text>
            <xsl:value-of select="b:Author/b:Author/b:NameList/b:Person/b:First"/>
            <xsl:text>. (</xsl:text>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:value-of select="b:Year"/>
      <xsl:text>). </xsl:text>
      <i>
         <xsl:value-of select="b:Title"/>
         <xsl:text>. </xsl:text>
      </i> 
         <xsl:value-of select="b:City"/>
         <xsl:text>: </xsl:text>
         <xsl:value-of select="b:Publisher"/>
         <xsl:text>.</xsl:text>
      </p>
   </xsl:template>      
   
   
<!--Defines the output format for a Case (in the Bibliography) with important fields defined-->
<xsl:template match="b:Source[b:SourceType = 'Case']">
   <!--Count the number of Corporate Authors (can only be 0 or 1-->
   <xsl:variable name="cCorporateAuthors">
      <xsl:value-of select="count(b:Author/b:Author/b:Corporate)" />
   </xsl:variable>
   <!--Label the paragraph as an Office Bibliography paragraph-->
   <p>
      <xsl:choose>
         <xsl:when test ="$cCorporateAuthors!=0">
         <!--When the corporate author exists display the corporate author-->
            <xsl:value-of select="b:Author/b:Author/b:Corporate"/>
            <xsl:text>. (</xsl:text>
         </xsl:when>
         <xsl:otherwise>
            <!--When the corporate author does not exist, display the normal author-->
            <xsl:value-of select="b:Author/b:Author/b:NameList/b:Person/b:Last"/>
            <xsl:text>, </xsl:text>
            <xsl:value-of select="b:Author/b:Author/b:NameList/b:Person/b:First"/>
            <xsl:text>. (</xsl:text>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:value-of select="b:Year"/>
      <xsl:text>). </xsl:text>
      <i>
         <xsl:value-of select="b:Title"/>
         <xsl:text>. </xsl:text>
      </i> 
         <xsl:value-of select="b:City"/>
         <xsl:text>: </xsl:text>
         <xsl:value-of select="b:Publisher"/>
         <xsl:text>.</xsl:text>
      </p>
   </xsl:template>   
   
   

<!--Defines the output format for a Misc (in the Bibliography) with important fields defined-->
<xsl:template match="b:Source[b:SourceType = 'Misc']">
   <!--Count the number of Corporate Authors (can only be 0 or 1-->
   <xsl:variable name="cCorporateAuthors">
      <xsl:value-of select="count(b:Author/b:Author/b:Corporate)" />
   </xsl:variable>
   <!--Label the paragraph as an Office Bibliography paragraph-->
   <p>
      <xsl:choose>
         <xsl:when test ="$cCorporateAuthors!=0">
         <!--When the corporate author exists display the corporate author-->
            <xsl:value-of select="b:Author/b:Author/b:Corporate"/>
            <xsl:text>. (</xsl:text>
         </xsl:when>
         <xsl:otherwise>
            <!--When the corporate author does not exist, display the normal author-->
            <xsl:value-of select="b:Author/b:Author/b:NameList/b:Person/b:Last"/>
            <xsl:text>, </xsl:text>
            <xsl:value-of select="b:Author/b:Author/b:NameList/b:Person/b:First"/>
            <xsl:text>. (</xsl:text>
         </xsl:otherwise>
      </xsl:choose>
      <xsl:value-of select="b:Year"/>
      <xsl:text>). </xsl:text>
      <i>
         <xsl:value-of select="b:Title"/>
         <xsl:text>. </xsl:text>
      </i> 
         <xsl:value-of select="b:City"/>
         <xsl:text>: </xsl:text>
         <xsl:value-of select="b:Publisher"/>
         <xsl:text>.</xsl:text>
      </p>
   </xsl:template>     
   
   
   
   
<!--СЕКЦІЯ НИЖЧЕ ОПИСУЄ ЯК ФОРМАТУЮТЬСЯ ПОСИЛАННЯ НА ДЖЕРЕЛА В ТЕКСТІ!!!!!!!!! -->     
   <!--Defines the output of the entire Bibliography-->
   <xsl:template match="b:Bibliography"> 
      <html xmlns="http://www.w3.org/TR/REC-html40"> 
         <body>
            <xsl:apply-templates select ="*">
            </xsl:apply-templates>
         </body>
      </html>
   </xsl:template>
   
   
   
   <!--Defines the output of the Citation for Book-->
<xsl:template match="b:Citation/b:Source[b:SourceType = 'Book']">
      <html xmlns="http://www.w3.org/TR/REC-html40"> 
         <xsl:variable name="cCorporateAuthors"> 
            <xsl:value-of select="count(b:Author/b:Author/b:Corporate)" /> 
         </xsl:variable> 
         <body> 
         <!--Defines the output format as (Author, Year--> 
            <xsl:text>[</xsl:text>
            <xsl:choose> 
            <!--When the corporate author exists display the corporate author-->
               <xsl:when test ="$cCorporateAuthors!=0">
                  <xsl:value-of select="b:Author/b:Author/b:Corporate"/>
               </xsl:when>
               <!--When the corporate author does not exist, display the normal author-->
               <xsl:otherwise> 
                  <xsl:value-of select="b:Author/b:Author/b:NameList/b:Person/b:Last"/> 
               </xsl:otherwise>
               </xsl:choose>
               <xsl:text>, </xsl:text> 
               <xsl:value-of select="b:Year"/>
	       <xsl:text>, </xsl:text>
	       <xsl:text>c. </xsl:text>
	       <xsl:value-of select="b:Pages"/>
               <xsl:text>]</xsl:text> 
            </body> 
         </html>
   </xsl:template>
   
   <!--Defines the output of the Citation for BookSection-->
<xsl:template match="b:Citation/b:Source[b:SourceType = 'BookSection']">
      <html xmlns="http://www.w3.org/TR/REC-html40"> 
         <xsl:variable name="cCorporateAuthors"> 
            <xsl:value-of select="count(b:Author/b:Author/b:Corporate)" /> 
         </xsl:variable> 
         <body> 
         <!--Defines the output format as (Author, Year--> 
            <xsl:text>[</xsl:text>
            <xsl:choose> 
            <!--When the corporate author exists display the corporate author-->
               <xsl:when test ="$cCorporateAuthors!=0">
                  <xsl:value-of select="b:Author/b:Author/b:Corporate"/>
               </xsl:when>
               <!--When the corporate author does not exist, display the normal author-->
               <xsl:otherwise> 
                  <xsl:value-of select="b:Author/b:Author/b:NameList/b:Person/b:Last"/> 
               </xsl:otherwise>
               </xsl:choose>
               <xsl:text>, </xsl:text> 
               <xsl:value-of select="b:Year"/>
	       <xsl:text>, </xsl:text>
	       <xsl:text>c. </xsl:text>
	       <xsl:value-of select="b:Pages"/>
               <xsl:text>]</xsl:text> 
            </body> 
         </html>
   </xsl:template>
   
      <!--Defines the output of the Citation for Journal Article-->
<xsl:template match="b:Citation/b:Source[b:SourceType = 'JournalArticle']">
   <html xmlns="http://www.w3.org/TR/REC-html40"> 
         <xsl:variable name="cCorporateAuthors"> 
            <xsl:value-of select="count(b:Author/b:Author/b:Corporate)" /> 
         </xsl:variable> 
         <body> 
         <!--Defines the output format as (Author, Year--> 
            <xsl:text>[</xsl:text>
            <xsl:choose> 
            <!--When the corporate author exists display the corporate author-->
               <xsl:when test ="$cCorporateAuthors!=0">
                  <xsl:value-of select="b:Author/b:Author/b:Corporate"/>
               </xsl:when>
               <!--When the corporate author does not exist, display the normal author-->
               <xsl:otherwise> 
                  <xsl:value-of select="b:Author/b:Author/b:NameList/b:Person/b:Last"/> 
               </xsl:otherwise>
               </xsl:choose>
               <xsl:text>, </xsl:text> 
               <xsl:value-of select="b:Year"/>
	       <xsl:text>, </xsl:text>
	       <xsl:text>c. </xsl:text>
	       <xsl:value-of select="b:Pages"/>
               <xsl:text>]</xsl:text> 
            </body> 
         </html>
   </xsl:template>
   
 <!--Defines the output of the Citation for Article In A Periodical-->
<xsl:template match="b:Citation/b:Source[b:SourceType = 'ArticleInAPeriodical']">
   <html xmlns="http://www.w3.org/TR/REC-html40"> 
         <xsl:variable name="cCorporateAuthors"> 
            <xsl:value-of select="count(b:Author/b:Author/b:Corporate)" /> 
         </xsl:variable> 
         <body> 
         <!--Defines the output format as (Author, Year--> 
            <xsl:text>[</xsl:text>
            <xsl:choose> 
            <!--When the corporate author exists display the corporate author-->
               <xsl:when test ="$cCorporateAuthors!=0">
                  <xsl:value-of select="b:Author/b:Author/b:Corporate"/>
               </xsl:when>
               <!--When the corporate author does not exist, display the normal author-->
               <xsl:otherwise> 
                  <xsl:value-of select="b:Author/b:Author/b:NameList/b:Person/b:Last"/> 
               </xsl:otherwise>
               </xsl:choose>
               <xsl:text>, </xsl:text> 
               <xsl:value-of select="b:Year"/>
	       <xsl:text>, </xsl:text>
	       <xsl:text>c. </xsl:text>
	       <xsl:value-of select="b:Pages"/>
               <xsl:text>]</xsl:text> 
            </body> 
         </html>
   </xsl:template>   
   

   
<!--Defines the output of the Citation for Conference Proceedings-->
<xsl:template match="b:Citation/b:Source[b:SourceType = 'ConferenceProceedings']">
  <html xmlns="http://www.w3.org/TR/REC-html40"> 
         <xsl:variable name="cCorporateAuthors"> 
            <xsl:value-of select="count(b:Author/b:Author/b:Corporate)" /> 
         </xsl:variable> 
         <body> 
         <!--Defines the output format as (Author, Year--> 
            <xsl:text>[</xsl:text>
            <xsl:choose> 
            <!--When the corporate author exists display the corporate author-->
               <xsl:when test ="$cCorporateAuthors!=0">
                  <xsl:value-of select="b:Author/b:Author/b:Corporate"/>
               </xsl:when>
               <!--When the corporate author does not exist, display the normal author-->
               <xsl:otherwise> 
                  <xsl:value-of select="b:Author/b:Author/b:NameList/b:Person/b:Last"/> 
               </xsl:otherwise>
               </xsl:choose>
               <xsl:text>, </xsl:text> 
               <xsl:value-of select="b:Year"/>
	       <xsl:text>, </xsl:text>
	       <xsl:text>c. </xsl:text>
	       <xsl:value-of select="b:Pages"/>
               <xsl:text>]</xsl:text> 
            </body> 
         </html>
   </xsl:template>   
  

  
<!--Defines the output of the Citation for Report-->
<xsl:template match="b:Citation/b:Source[b:SourceType = 'Report']">
  <html xmlns="http://www.w3.org/TR/REC-html40"> 
         <xsl:variable name="cCorporateAuthors"> 
            <xsl:value-of select="count(b:Author/b:Author/b:Corporate)" /> 
         </xsl:variable> 
         <body> 
         <!--Defines the output format as (Author, Year--> 
            <xsl:text>[</xsl:text>
            <xsl:choose> 
            <!--When the corporate author exists display the corporate author-->
               <xsl:when test ="$cCorporateAuthors!=0">
                  <xsl:value-of select="b:Author/b:Author/b:Corporate"/>
               </xsl:when>
               <!--When the corporate author does not exist, display the normal author-->
               <xsl:otherwise> 
                  <xsl:value-of select="b:Author/b:Author/b:NameList/b:Person/b:Last"/> 
               </xsl:otherwise>
               </xsl:choose>
               <xsl:text>, </xsl:text> 
               <xsl:value-of select="b:Year"/>
	       <xsl:text>, </xsl:text>
	       <xsl:text>c. </xsl:text>
	       <xsl:value-of select="b:Pages"/>
               <xsl:text>]</xsl:text> 
            </body> 
         </html>
   </xsl:template>   
  

  
  
  
  
  
  
<!--Defines the output of the Citation for Sound Recording-->
<xsl:template match="b:Citation/b:Source[b:SourceType = 'SoundRecording']">
  <html xmlns="http://www.w3.org/TR/REC-html40"> 
         <xsl:variable name="cCorporateAuthors"> 
            <xsl:value-of select="count(b:Author/b:Author/b:Corporate)" /> 
         </xsl:variable> 
         <body> 
         <!--Defines the output format as (Author, Year--> 
            <xsl:text>[</xsl:text>
            <xsl:choose> 
            <!--When the corporate author exists display the corporate author-->
               <xsl:when test ="$cCorporateAuthors!=0">
                  <xsl:value-of select="b:Author/b:Author/b:Corporate"/>
               </xsl:when>
               <!--When the corporate author does not exist, display the normal author-->
               <xsl:otherwise> 
                  <xsl:value-of select="b:Author/b:Author/b:NameList/b:Person/b:Last"/> 
               </xsl:otherwise>
               </xsl:choose>
               <xsl:text>, </xsl:text> 
               <xsl:value-of select="b:Year"/>
	       <xsl:text>, </xsl:text>
	       <xsl:text>c. </xsl:text>
	       <xsl:value-of select="b:Pages"/>
               <xsl:text>]</xsl:text> 
            </body> 
         </html>
   </xsl:template>    
  

<!--Defines the output of the Citation for Performance-->
<xsl:template match="b:Citation/b:Source[b:SourceType = 'Performance']">
  <html xmlns="http://www.w3.org/TR/REC-html40"> 
         <xsl:variable name="cCorporateAuthors"> 
            <xsl:value-of select="count(b:Author/b:Author/b:Corporate)" /> 
         </xsl:variable> 
         <body> 
         <!--Defines the output format as (Author, Year--> 
            <xsl:text>[</xsl:text>
            <xsl:choose> 
            <!--When the corporate author exists display the corporate author-->
               <xsl:when test ="$cCorporateAuthors!=0">
                  <xsl:value-of select="b:Author/b:Author/b:Corporate"/>
               </xsl:when>
               <!--When the corporate author does not exist, display the normal author-->
               <xsl:otherwise> 
                  <xsl:value-of select="b:Author/b:Author/b:NameList/b:Person/b:Last"/> 
               </xsl:otherwise>
               </xsl:choose>
               <xsl:text>, </xsl:text> 
               <xsl:value-of select="b:Year"/>
	       <xsl:text>, </xsl:text>
	       <xsl:text>c. </xsl:text>
	       <xsl:value-of select="b:Pages"/>
               <xsl:text>]</xsl:text> 
            </body> 
         </html>
   </xsl:template>    
  

  
<!--Defines the output of the Citation for Art-->
<xsl:template match="b:Citation/b:Source[b:SourceType = 'Art']">
  <html xmlns="http://www.w3.org/TR/REC-html40"> 
         <xsl:variable name="cCorporateAuthors"> 
            <xsl:value-of select="count(b:Author/b:Author/b:Corporate)" /> 
         </xsl:variable> 
         <body> 
         <!--Defines the output format as (Author, Year--> 
            <xsl:text>[</xsl:text>
            <xsl:choose> 
            <!--When the corporate author exists display the corporate author-->
               <xsl:when test ="$cCorporateAuthors!=0">
                  <xsl:value-of select="b:Author/b:Author/b:Corporate"/>
               </xsl:when>
               <!--When the corporate author does not exist, display the normal author-->
               <xsl:otherwise> 
                  <xsl:value-of select="b:Author/b:Author/b:NameList/b:Person/b:Last"/> 
               </xsl:otherwise>
               </xsl:choose>
               <xsl:text>, </xsl:text> 
               <xsl:value-of select="b:Year"/>
	       <xsl:text>, </xsl:text>
	       <xsl:text>c. </xsl:text>
	       <xsl:value-of select="b:Pages"/>
               <xsl:text>]</xsl:text> 
            </body> 
         </html>
</xsl:template>   
  

  
<!--Defines the output of the Citation for Document From Internet Site-->
<xsl:template match="b:Citation/b:Source[b:SourceType = 'DocumentFromInternetSite']">
  <html xmlns="http://www.w3.org/TR/REC-html40"> 
         <xsl:variable name="cCorporateAuthors"> 
            <xsl:value-of select="count(b:Author/b:Author/b:Corporate)" /> 
         </xsl:variable> 
         <body> 
         <!--Defines the output format as (Author, Year--> 
            <xsl:text>[</xsl:text>
            <xsl:choose> 
            <!--When the corporate author exists display the corporate author-->
               <xsl:when test ="$cCorporateAuthors!=0">
                  <xsl:value-of select="b:Author/b:Author/b:Corporate"/>
               </xsl:when>
               <!--When the corporate author does not exist, display the normal author-->
               <xsl:otherwise> 
                  <xsl:value-of select="b:Author/b:Author/b:NameList/b:Person/b:Last"/> 
               </xsl:otherwise>
               </xsl:choose>
               <xsl:text>, </xsl:text> 
               <xsl:value-of select="b:Year"/>
	       <xsl:text>, </xsl:text>
	       <xsl:text>c. </xsl:text>
	       <xsl:value-of select="b:Pages"/>
               <xsl:text>]</xsl:text> 
            </body> 
         </html>
</xsl:template>   


<!--Defines the output of the Citation for InternetSite-->
<xsl:template match="b:Citation/b:Source[b:SourceType = 'InternetSite']">
  <html xmlns="http://www.w3.org/TR/REC-html40"> 
         <xsl:variable name="cCorporateAuthors"> 
            <xsl:value-of select="count(b:Author/b:Author/b:Corporate)" /> 
         </xsl:variable> 
         <body> 
         <!--Defines the output format as (Author, Year--> 
            <xsl:text>[</xsl:text>
            <xsl:choose> 
            <!--When the corporate author exists display the corporate author-->
               <xsl:when test ="$cCorporateAuthors!=0">
                  <xsl:value-of select="b:Author/b:Author/b:Corporate"/>
               </xsl:when>
               <!--When the corporate author does not exist, display the normal author-->
               <xsl:otherwise> 
                  <xsl:value-of select="b:Author/b:Author/b:NameList/b:Person/b:Last"/> 
               </xsl:otherwise>
               </xsl:choose>
               <xsl:text>, </xsl:text> 
               <xsl:value-of select="b:Year"/>
	       <xsl:text>, </xsl:text>
	       <xsl:text>c. </xsl:text>
	       <xsl:value-of select="b:Pages"/>
               <xsl:text>]</xsl:text> 
            </body> 
         </html>
</xsl:template>   



<!--Defines the output of the Citation for Film-->
<xsl:template match="b:Citation/b:Source[b:SourceType = 'Film']">
  <html xmlns="http://www.w3.org/TR/REC-html40"> 
         <xsl:variable name="cCorporateAuthors"> 
            <xsl:value-of select="count(b:Author/b:Author/b:Corporate)" /> 
         </xsl:variable> 
         <body> 
         <!--Defines the output format as (Author, Year--> 
            <xsl:text>[</xsl:text>
            <xsl:choose> 
            <!--When the corporate author exists display the corporate author-->
               <xsl:when test ="$cCorporateAuthors!=0">
                  <xsl:value-of select="b:Author/b:Author/b:Corporate"/>
               </xsl:when>
               <!--When the corporate author does not exist, display the normal author-->
               <xsl:otherwise> 
                  <xsl:value-of select="b:Author/b:Author/b:NameList/b:Person/b:Last"/> 
               </xsl:otherwise>
               </xsl:choose>
               <xsl:text>, </xsl:text> 
               <xsl:value-of select="b:Year"/>
	       <xsl:text>, </xsl:text>
	       <xsl:text>c. </xsl:text>
	       <xsl:value-of select="b:Pages"/>
               <xsl:text>]</xsl:text> 
            </body> 
         </html>
</xsl:template> 


<!--Defines the output of the Citation for Interview-->
<xsl:template match="b:Citation/b:Source[b:SourceType = 'Interview']">
  <html xmlns="http://www.w3.org/TR/REC-html40"> 
         <xsl:variable name="cCorporateAuthors"> 
            <xsl:value-of select="count(b:Author/b:Author/b:Corporate)" /> 
         </xsl:variable> 
         <body> 
         <!--Defines the output format as (Author, Year--> 
            <xsl:text>[</xsl:text>
            <xsl:choose> 
            <!--When the corporate author exists display the corporate author-->
               <xsl:when test ="$cCorporateAuthors!=0">
                  <xsl:value-of select="b:Author/b:Author/b:Corporate"/>
               </xsl:when>
               <!--When the corporate author does not exist, display the normal author-->
               <xsl:otherwise> 
                  <xsl:value-of select="b:Author/b:Author/b:NameList/b:Person/b:Last"/> 
               </xsl:otherwise>
               </xsl:choose>
               <xsl:text>, </xsl:text> 
               <xsl:value-of select="b:Year"/>
	       <xsl:text>, </xsl:text>
	       <xsl:text>c. </xsl:text>
	       <xsl:value-of select="b:Pages"/>
               <xsl:text>]</xsl:text> 
            </body> 
         </html>
</xsl:template> 



<!--Defines the output of the Citation for Patent-->
<xsl:template match="b:Citation/b:Source[b:SourceType = 'Patent']">
  <html xmlns="http://www.w3.org/TR/REC-html40"> 
         <xsl:variable name="cCorporateAuthors"> 
            <xsl:value-of select="count(b:Author/b:Author/b:Corporate)" /> 
         </xsl:variable> 
         <body> 
         <!--Defines the output format as (Author, Year--> 
            <xsl:text>[</xsl:text>
            <xsl:choose> 
            <!--When the corporate author exists display the corporate author-->
               <xsl:when test ="$cCorporateAuthors!=0">
                  <xsl:value-of select="b:Author/b:Author/b:Corporate"/>
               </xsl:when>
               <!--When the corporate author does not exist, display the normal author-->
               <xsl:otherwise> 
                  <xsl:value-of select="b:Author/b:Author/b:NameList/b:Person/b:Last"/> 
               </xsl:otherwise>
               </xsl:choose>
               <xsl:text>, </xsl:text> 
               <xsl:value-of select="b:Year"/>
	       <xsl:text>, </xsl:text>
	       <xsl:text>c. </xsl:text>
	       <xsl:value-of select="b:Pages"/>
               <xsl:text>]</xsl:text> 
            </body> 
         </html>
</xsl:template> 



<!--Defines the output of the Citation for ElectronicSource-->
<xsl:template match="b:Citation/b:Source[b:SourceType = 'ElectronicSource']">
  <html xmlns="http://www.w3.org/TR/REC-html40"> 
         <xsl:variable name="cCorporateAuthors"> 
            <xsl:value-of select="count(b:Author/b:Author/b:Corporate)" /> 
         </xsl:variable> 
         <body> 
         <!--Defines the output format as (Author, Year--> 
            <xsl:text>[</xsl:text>
            <xsl:choose> 
            <!--When the corporate author exists display the corporate author-->
               <xsl:when test ="$cCorporateAuthors!=0">
                  <xsl:value-of select="b:Author/b:Author/b:Corporate"/>
               </xsl:when>
               <!--When the corporate author does not exist, display the normal author-->
               <xsl:otherwise> 
                  <xsl:value-of select="b:Author/b:Author/b:NameList/b:Person/b:Last"/> 
               </xsl:otherwise>
               </xsl:choose>
               <xsl:text>, </xsl:text> 
               <xsl:value-of select="b:Year"/>
	       <xsl:text>, </xsl:text>
	       <xsl:text>c. </xsl:text>
	       <xsl:value-of select="b:Pages"/>
               <xsl:text>]</xsl:text> 
            </body> 
         </html>
</xsl:template> 



<!--Defines the output of the Citation for Case-->
<xsl:template match="b:Citation/b:Source[b:SourceType = 'Case']">
  <html xmlns="http://www.w3.org/TR/REC-html40"> 
         <xsl:variable name="cCorporateAuthors"> 
            <xsl:value-of select="count(b:Author/b:Author/b:Corporate)" /> 
         </xsl:variable> 
         <body> 
         <!--Defines the output format as (Author, Year--> 
            <xsl:text>[</xsl:text>
            <xsl:choose> 
            <!--When the corporate author exists display the corporate author-->
               <xsl:when test ="$cCorporateAuthors!=0">
                  <xsl:value-of select="b:Author/b:Author/b:Corporate"/>
               </xsl:when>
               <!--When the corporate author does not exist, display the normal author-->
               <xsl:otherwise> 
                  <xsl:value-of select="b:Author/b:Author/b:NameList/b:Person/b:Last"/> 
               </xsl:otherwise>
               </xsl:choose>
               <xsl:text>, </xsl:text> 
               <xsl:value-of select="b:Year"/>
	       <xsl:text>, </xsl:text>
	       <xsl:text>c. </xsl:text>
	       <xsl:value-of select="b:Pages"/>
               <xsl:text>]</xsl:text> 
            </body> 
         </html>
</xsl:template> 


<!--Defines the output of the Citation for Misc-->
<xsl:template match="b:Citation/b:Source[b:SourceType = 'Misc']">
  <html xmlns="http://www.w3.org/TR/REC-html40"> 
         <xsl:variable name="cCorporateAuthors"> 
            <xsl:value-of select="count(b:Author/b:Author/b:Corporate)" /> 
         </xsl:variable> 
         <body> 
         <!--Defines the output format as (Author, Year--> 
            <xsl:text>[</xsl:text>
            <xsl:choose> 
            <!--When the corporate author exists display the corporate author-->
               <xsl:when test ="$cCorporateAuthors!=0">
                  <xsl:value-of select="b:Author/b:Author/b:Corporate"/>
               </xsl:when>
               <!--When the corporate author does not exist, display the normal author-->
               <xsl:otherwise> 
                  <xsl:value-of select="b:Author/b:Author/b:NameList/b:Person/b:Last"/> 
               </xsl:otherwise>
               </xsl:choose>
               <xsl:text>, </xsl:text> 
               <xsl:value-of select="b:Year"/>
	       <xsl:text>, </xsl:text>
	       <xsl:text>c. </xsl:text>
	       <xsl:value-of select="b:Pages"/>
               <xsl:text>]</xsl:text> 
            </body> 
         </html>
</xsl:template> 



   <xsl:template match="text()" />
</xsl:stylesheet>