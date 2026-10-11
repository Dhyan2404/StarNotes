.class public interface abstract Lorg/openxmlformats/schemas/presentationml/x2006/main/CTHeaderFooter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/presentationml/x2006/main/CTHeaderFooter;",
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

    const-string v2, "ctheaderfooterb29dtype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTHeaderFooter;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTHeaderFooter;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewExtLst()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTExtensionListModify;
.end method

.method public abstract getDt()Z
.end method

.method public abstract getExtLst()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTExtensionListModify;
.end method

.method public abstract getFtr()Z
.end method

.method public abstract getHdr()Z
.end method

.method public abstract getSldNum()Z
.end method

.method public abstract isSetDt()Z
.end method

.method public abstract isSetExtLst()Z
.end method

.method public abstract isSetFtr()Z
.end method

.method public abstract isSetHdr()Z
.end method

.method public abstract isSetSldNum()Z
.end method

.method public abstract setDt(Z)V
.end method

.method public abstract setExtLst(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTExtensionListModify;)V
.end method

.method public abstract setFtr(Z)V
.end method

.method public abstract setHdr(Z)V
.end method

.method public abstract setSldNum(Z)V
.end method

.method public abstract unsetDt()V
.end method

.method public abstract unsetExtLst()V
.end method

.method public abstract unsetFtr()V
.end method

.method public abstract unsetHdr()V
.end method

.method public abstract unsetSldNum()V
.end method

.method public abstract xgetDt()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetFtr()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetHdr()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetSldNum()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xsetDt(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetFtr(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetHdr(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetSldNum(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method
