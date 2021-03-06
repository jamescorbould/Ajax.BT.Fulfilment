<xsl:template name="MergeOrder">
  <xsl:for-each select="InputMessagePart_0/ns0:Order/Items/Item">
      <Item>
        <LineNo>
          <xsl:value-of select="LineNo/text()" />
        </LineNo>
        <ItemID>
          <xsl:value-of select="ItemID/text()" />
        </ItemID>
        <Description>
          <xsl:value-of select="Description/text()" />
        </Description>
        <Quantity>
          <xsl:value-of select="Quantity/text()" />
        </Quantity>
        <TotalCost>
          <xsl:value-of select="TotalCost/text()" />
        </TotalCost>
      </Item>
    </xsl:for-each>
    <Item>
      <LineNo>
        <xsl:value-of select="InputMessagePart_0/ns0:Order/Items/Item[last()]/LineNo/text()+1" />
      </LineNo>
      <ItemID>00</ItemID>
      <Description>FREE GIFT!! - <xsl:value-of select="InputMessagePart_1/s0:ObtainPresentResponse/s0:ObtainPresentResult/text()" /></Description>
      <Quantity>1</Quantity>
      <TotalCost>0.00</TotalCost>
    </Item>
</xsl:template>