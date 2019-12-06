<?xml version="1.0"?>
<xsl:stylesheet
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
	<xsl:template match="/">
		<table id="movieTable" class="indent">
			<thead>
				<tr>
					<th colspan="9">Select a movie from the menu below</th>
				</tr>
				<tr>
					<th>Select</th>
					<th>Movie Title</th>
					<th>Year</th>
					<th>Duration</th>
					<th>Genre</th>
					<th>Director</th>
					<th>Stars</th>
					<th>Rating</th>
					<th>Price</th>
				</tr>
			</thead>
			<tbody>
				<xsl:for-each select="/movies_menu/section">
					<tr>
						<td colspan="9">
							<xsl:value-of select="@name" />
						</td>
					</tr>
					<xsl:for-each select="movie">
						<tr id="{position()}">
							<td align="center">
								<input name="item0" type="checkbox" />
							</td>
							<td>
								<xsl:value-of select="title" />
							</td>
							<td>
								<xsl:value-of select="year" />
							</td>
							<td>
								<xsl:value-of select="duration" />
							</td>
							<td>
								<xsl:value-of select="genre" />
							</td>
							<td>
								<xsl:value-of select="director" />
							</td>
							<td>
								<xsl:value-of select="stars" />
							</td>
							<td>
								<xsl:value-of select="rating" />
							</td>
							<td align="right">
								<xsl:value-of select="price" />
							</td>
						</tr>
					</xsl:for-each>
				</xsl:for-each>
			</tbody>
		</table>
		<br/>
		<form class="indent">
			<form class="indent">
				<p>
					<input type="button" name="btnCalcBill" value="Calculate Bill" id="calcBill" />
				Total: €
				
					<input type="text" name="txtBillAmt" />
					<input type="checkbox" name="cbOpts" value="isVeg" id="showVeg" />
					<label for="showVeg">Highlight Vegetarian Meals</label>
				</p>
			</form>
		</form>
	</xsl:template>
</xsl:stylesheet>