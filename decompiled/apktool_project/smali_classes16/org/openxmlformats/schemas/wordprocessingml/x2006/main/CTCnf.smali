.class public interface abstract Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTCnf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTCnf;",
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

    const-string v2, "ctcnf1397type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTCnf;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTCnf;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract getEvenHBand()Ljava/lang/Object;
.end method

.method public abstract getEvenVBand()Ljava/lang/Object;
.end method

.method public abstract getFirstColumn()Ljava/lang/Object;
.end method

.method public abstract getFirstRow()Ljava/lang/Object;
.end method

.method public abstract getFirstRowFirstColumn()Ljava/lang/Object;
.end method

.method public abstract getFirstRowLastColumn()Ljava/lang/Object;
.end method

.method public abstract getLastColumn()Ljava/lang/Object;
.end method

.method public abstract getLastRow()Ljava/lang/Object;
.end method

.method public abstract getLastRowFirstColumn()Ljava/lang/Object;
.end method

.method public abstract getLastRowLastColumn()Ljava/lang/Object;
.end method

.method public abstract getOddHBand()Ljava/lang/Object;
.end method

.method public abstract getOddVBand()Ljava/lang/Object;
.end method

.method public abstract getVal()Ljava/lang/String;
.end method

.method public abstract isSetEvenHBand()Z
.end method

.method public abstract isSetEvenVBand()Z
.end method

.method public abstract isSetFirstColumn()Z
.end method

.method public abstract isSetFirstRow()Z
.end method

.method public abstract isSetFirstRowFirstColumn()Z
.end method

.method public abstract isSetFirstRowLastColumn()Z
.end method

.method public abstract isSetLastColumn()Z
.end method

.method public abstract isSetLastRow()Z
.end method

.method public abstract isSetLastRowFirstColumn()Z
.end method

.method public abstract isSetLastRowLastColumn()Z
.end method

.method public abstract isSetOddHBand()Z
.end method

.method public abstract isSetOddVBand()Z
.end method

.method public abstract isSetVal()Z
.end method

.method public abstract setEvenHBand(Ljava/lang/Object;)V
.end method

.method public abstract setEvenVBand(Ljava/lang/Object;)V
.end method

.method public abstract setFirstColumn(Ljava/lang/Object;)V
.end method

.method public abstract setFirstRow(Ljava/lang/Object;)V
.end method

.method public abstract setFirstRowFirstColumn(Ljava/lang/Object;)V
.end method

.method public abstract setFirstRowLastColumn(Ljava/lang/Object;)V
.end method

.method public abstract setLastColumn(Ljava/lang/Object;)V
.end method

.method public abstract setLastRow(Ljava/lang/Object;)V
.end method

.method public abstract setLastRowFirstColumn(Ljava/lang/Object;)V
.end method

.method public abstract setLastRowLastColumn(Ljava/lang/Object;)V
.end method

.method public abstract setOddHBand(Ljava/lang/Object;)V
.end method

.method public abstract setOddVBand(Ljava/lang/Object;)V
.end method

.method public abstract setVal(Ljava/lang/String;)V
.end method

.method public abstract unsetEvenHBand()V
.end method

.method public abstract unsetEvenVBand()V
.end method

.method public abstract unsetFirstColumn()V
.end method

.method public abstract unsetFirstRow()V
.end method

.method public abstract unsetFirstRowFirstColumn()V
.end method

.method public abstract unsetFirstRowLastColumn()V
.end method

.method public abstract unsetLastColumn()V
.end method

.method public abstract unsetLastRow()V
.end method

.method public abstract unsetLastRowFirstColumn()V
.end method

.method public abstract unsetLastRowLastColumn()V
.end method

.method public abstract unsetOddHBand()V
.end method

.method public abstract unsetOddVBand()V
.end method

.method public abstract unsetVal()V
.end method

.method public abstract xgetEvenHBand()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STOnOff;
.end method

.method public abstract xgetEvenVBand()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STOnOff;
.end method

.method public abstract xgetFirstColumn()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STOnOff;
.end method

.method public abstract xgetFirstRow()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STOnOff;
.end method

.method public abstract xgetFirstRowFirstColumn()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STOnOff;
.end method

.method public abstract xgetFirstRowLastColumn()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STOnOff;
.end method

.method public abstract xgetLastColumn()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STOnOff;
.end method

.method public abstract xgetLastRow()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STOnOff;
.end method

.method public abstract xgetLastRowFirstColumn()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STOnOff;
.end method

.method public abstract xgetLastRowLastColumn()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STOnOff;
.end method

.method public abstract xgetOddHBand()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STOnOff;
.end method

.method public abstract xgetOddVBand()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STOnOff;
.end method

.method public abstract xgetVal()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STCnf;
.end method

.method public abstract xsetEvenHBand(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STOnOff;)V
.end method

.method public abstract xsetEvenVBand(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STOnOff;)V
.end method

.method public abstract xsetFirstColumn(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STOnOff;)V
.end method

.method public abstract xsetFirstRow(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STOnOff;)V
.end method

.method public abstract xsetFirstRowFirstColumn(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STOnOff;)V
.end method

.method public abstract xsetFirstRowLastColumn(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STOnOff;)V
.end method

.method public abstract xsetLastColumn(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STOnOff;)V
.end method

.method public abstract xsetLastRow(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STOnOff;)V
.end method

.method public abstract xsetLastRowFirstColumn(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STOnOff;)V
.end method

.method public abstract xsetLastRowLastColumn(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STOnOff;)V
.end method

.method public abstract xsetOddHBand(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STOnOff;)V
.end method

.method public abstract xsetOddVBand(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STOnOff;)V
.end method

.method public abstract xsetVal(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/STCnf;)V
.end method
