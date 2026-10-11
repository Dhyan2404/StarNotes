.class public interface abstract Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDiv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDiv;",
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

    const-string v2, "ctdiv7c21type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDiv;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDiv;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewBlockQuote()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract addNewBodyDiv()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract addNewDivBdr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDivBdr;
.end method

.method public abstract addNewDivsChild()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDivs;
.end method

.method public abstract addNewMarBottom()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSignedTwipsMeasure;
.end method

.method public abstract addNewMarLeft()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSignedTwipsMeasure;
.end method

.method public abstract addNewMarRight()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSignedTwipsMeasure;
.end method

.method public abstract addNewMarTop()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSignedTwipsMeasure;
.end method

.method public abstract getBlockQuote()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract getBodyDiv()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;
.end method

.method public abstract getDivBdr()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDivBdr;
.end method

.method public abstract getDivsChildArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDivs;
.end method

.method public abstract getDivsChildArray()[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDivs;
.end method

.method public abstract getDivsChildList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDivs;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getId()Ljava/math/BigInteger;
.end method

.method public abstract getMarBottom()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSignedTwipsMeasure;
.end method

.method public abstract getMarLeft()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSignedTwipsMeasure;
.end method

.method public abstract getMarRight()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSignedTwipsMeasure;
.end method

.method public abstract getMarTop()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSignedTwipsMeasure;
.end method

.method public abstract insertNewDivsChild(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDivs;
.end method

.method public abstract isSetBlockQuote()Z
.end method

.method public abstract isSetBodyDiv()Z
.end method

.method public abstract isSetDivBdr()Z
.end method

.method public abstract removeDivsChild(I)V
.end method

.method public abstract setBlockQuote(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)V
.end method

.method public abstract setBodyDiv(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTOnOff;)V
.end method

.method public abstract setDivBdr(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDivBdr;)V
.end method

.method public abstract setDivsChildArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDivs;)V
.end method

.method public abstract setDivsChildArray([Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDivs;)V
.end method

.method public abstract setId(Ljava/math/BigInteger;)V
.end method

.method public abstract setMarBottom(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSignedTwipsMeasure;)V
.end method

.method public abstract setMarLeft(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSignedTwipsMeasure;)V
.end method

.method public abstract setMarRight(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSignedTwipsMeasure;)V
.end method

.method public abstract setMarTop(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSignedTwipsMeasure;)V
.end method

.method public abstract sizeOfDivsChildArray()I
.end method

.method public abstract unsetBlockQuote()V
.end method

.method public abstract unsetBodyDiv()V
.end method

.method public abstract unsetDivBdr()V
.end method

.method public abstract xgetId()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDecimalNumber;
.end method

.method public abstract xsetId(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STDecimalNumber;)V
.end method
