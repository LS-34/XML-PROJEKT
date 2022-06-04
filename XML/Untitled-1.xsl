<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<Filmovi>
			<xsl:for-each select="/Filmovi/Film">
				<Film>
					<DownloadGumb>
						<xsl:value-of select="./DownloadGumb"/>
					</DownloadGumb>
					<Ocjena>
						<xsl:value-of select="./Ocjena"/>
					</Ocjena>
					<NaslovFilma>
						<xsl:value-of select="./NaslovFilma"/>
					</NaslovFilma>
				</Film>
			</xsl:for-each>
			<Podnaslov>
				<xsl:value-of select="/Filmovi/Podnaslov"/>
			</Podnaslov>
			<Naslov>
				<xsl:value-of select="/Filmovi/Naslov"/>
			</Naslov>
			<xsl:for-each select="/Filmovi/Navigacija">
				<Navigacija>
					<lista>
						<poveznice>
							<xsl:value-of select="./lista/poveznice"/>
						</poveznice>
					</lista>
				</Navigacija>
			</xsl:for-each>
		</Filmovi>
	</xsl:template>
</xsl:stylesheet>