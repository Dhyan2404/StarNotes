.class public interface abstract Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellAlignment;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellAlignment;",
            ">;"
        }
    .end annotation
.end field

.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    sget-object v1, Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;->typeSystem:Lorg/apache/poi/schemas/ooxml/system/ooxml/TypeSystemHolder;

    const-string v2, "ctcellalignmentb580type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellAlignment;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCellAlignment;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract getHorizontal()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STHorizontalAlignment$Enum;
.end method

.method public abstract getIndent()J
.end method

.method public abstract getJustifyLastLine()Z
.end method

.method public abstract getReadingOrder()J
.end method

.method public abstract getRelativeIndent()I
.end method

.method public abstract getShrinkToFit()Z
.end method

.method public abstract getTextRotation()Ljava/math/BigInteger;
.end method

.method public abstract getVertical()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STVerticalAlignment$Enum;
.end method

.method public abstract getWrapText()Z
.end method

.method public abstract isSetHorizontal()Z
.end method

.method public abstract isSetIndent()Z
.end method

.method public abstract isSetJustifyLastLine()Z
.end method

.method public abstract isSetReadingOrder()Z
.end method

.method public abstract isSetRelativeIndent()Z
.end method

.method public abstract isSetShrinkToFit()Z
.end method

.method public abstract isSetTextRotation()Z
.end method

.method public abstract isSetVertical()Z
.end method

.method public abstract isSetWrapText()Z
.end method

.method public abstract setHorizontal(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STHorizontalAlignment$Enum;)V
.end method

.method public abstract setIndent(J)V
.end method

.method public abstract setJustifyLastLine(Z)V
.end method

.method public abstract setReadingOrder(J)V
.end method

.method public abstract setRelativeIndent(I)V
.end method

.method public abstract setShrinkToFit(Z)V
.end method

.method public abstract setTextRotation(Ljava/math/BigInteger;)V
.end method

.method public abstract setVertical(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STVerticalAlignment$Enum;)V
.end method

.method public abstract setWrapText(Z)V
.end method

.method public abstract unsetHorizontal()V
.end method

.method public abstract unsetIndent()V
.end method

.method public abstract unsetJustifyLastLine()V
.end method

.method public abstract unsetReadingOrder()V
.end method

.method public abstract unsetRelativeIndent()V
.end method

.method public abstract unsetShrinkToFit()V
.end method

.method public abstract unsetTextRotation()V
.end method

.method public abstract unsetVertical()V
.end method

.method public abstract unsetWrapText()V
.end method

.method public abstract xgetHorizontal()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STHorizontalAlignment;
.end method

.method public abstract xgetIndent()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xgetJustifyLastLine()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetReadingOrder()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xgetRelativeIndent()Lorg/apache/xmlbeans/XmlInt;
.end method

.method public abstract xgetShrinkToFit()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetTextRotation()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTextRotation;
.end method

.method public abstract xgetVertical()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STVerticalAlignment;
.end method

.method public abstract xgetWrapText()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xsetHorizontal(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STHorizontalAlignment;)V
.end method

.method public abstract xsetIndent(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method

.method public abstract xsetJustifyLastLine(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetReadingOrder(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method

.method public abstract xsetRelativeIndent(Lorg/apache/xmlbeans/XmlInt;)V
.end method

.method public abstract xsetShrinkToFit(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetTextRotation(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTextRotation;)V
.end method

.method public abstract xsetVertical(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STVerticalAlignment;)V
.end method

.method public abstract xsetWrapText(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method
