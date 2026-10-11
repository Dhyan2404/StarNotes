.class public interface abstract Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHeaderFooter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHeaderFooter;",
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

    const-string v2, "ctheaderfooter90d1type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHeaderFooter;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTHeaderFooter;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract getAlignWithMargins()Z
.end method

.method public abstract getDifferentFirst()Z
.end method

.method public abstract getDifferentOddEven()Z
.end method

.method public abstract getEvenFooter()Ljava/lang/String;
.end method

.method public abstract getEvenHeader()Ljava/lang/String;
.end method

.method public abstract getFirstFooter()Ljava/lang/String;
.end method

.method public abstract getFirstHeader()Ljava/lang/String;
.end method

.method public abstract getOddFooter()Ljava/lang/String;
.end method

.method public abstract getOddHeader()Ljava/lang/String;
.end method

.method public abstract getScaleWithDoc()Z
.end method

.method public abstract isSetAlignWithMargins()Z
.end method

.method public abstract isSetDifferentFirst()Z
.end method

.method public abstract isSetDifferentOddEven()Z
.end method

.method public abstract isSetEvenFooter()Z
.end method

.method public abstract isSetEvenHeader()Z
.end method

.method public abstract isSetFirstFooter()Z
.end method

.method public abstract isSetFirstHeader()Z
.end method

.method public abstract isSetOddFooter()Z
.end method

.method public abstract isSetOddHeader()Z
.end method

.method public abstract isSetScaleWithDoc()Z
.end method

.method public abstract setAlignWithMargins(Z)V
.end method

.method public abstract setDifferentFirst(Z)V
.end method

.method public abstract setDifferentOddEven(Z)V
.end method

.method public abstract setEvenFooter(Ljava/lang/String;)V
.end method

.method public abstract setEvenHeader(Ljava/lang/String;)V
.end method

.method public abstract setFirstFooter(Ljava/lang/String;)V
.end method

.method public abstract setFirstHeader(Ljava/lang/String;)V
.end method

.method public abstract setOddFooter(Ljava/lang/String;)V
.end method

.method public abstract setOddHeader(Ljava/lang/String;)V
.end method

.method public abstract setScaleWithDoc(Z)V
.end method

.method public abstract unsetAlignWithMargins()V
.end method

.method public abstract unsetDifferentFirst()V
.end method

.method public abstract unsetDifferentOddEven()V
.end method

.method public abstract unsetEvenFooter()V
.end method

.method public abstract unsetEvenHeader()V
.end method

.method public abstract unsetFirstFooter()V
.end method

.method public abstract unsetFirstHeader()V
.end method

.method public abstract unsetOddFooter()V
.end method

.method public abstract unsetOddHeader()V
.end method

.method public abstract unsetScaleWithDoc()V
.end method

.method public abstract xgetAlignWithMargins()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetDifferentFirst()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetDifferentOddEven()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetEvenFooter()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;
.end method

.method public abstract xgetEvenHeader()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;
.end method

.method public abstract xgetFirstFooter()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;
.end method

.method public abstract xgetFirstHeader()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;
.end method

.method public abstract xgetOddFooter()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;
.end method

.method public abstract xgetOddHeader()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;
.end method

.method public abstract xgetScaleWithDoc()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xsetAlignWithMargins(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetDifferentFirst(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetDifferentOddEven(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetEvenFooter(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;)V
.end method

.method public abstract xsetEvenHeader(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;)V
.end method

.method public abstract xsetFirstFooter(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;)V
.end method

.method public abstract xsetFirstHeader(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;)V
.end method

.method public abstract xsetOddFooter(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;)V
.end method

.method public abstract xsetOddHeader(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;)V
.end method

.method public abstract xsetScaleWithDoc(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method
