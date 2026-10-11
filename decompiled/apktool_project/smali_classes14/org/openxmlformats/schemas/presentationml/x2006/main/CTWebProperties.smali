.class public interface abstract Lorg/openxmlformats/schemas/presentationml/x2006/main/CTWebProperties;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/presentationml/x2006/main/CTWebProperties;",
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

    const-string v2, "ctwebproperties5308type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTWebProperties;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTWebProperties;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewExtLst()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTExtensionList;
.end method

.method public abstract getAllowPng()Z
.end method

.method public abstract getClr()Lorg/openxmlformats/schemas/presentationml/x2006/main/STWebColorType$Enum;
.end method

.method public abstract getEncoding()Ljava/lang/String;
.end method

.method public abstract getExtLst()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTExtensionList;
.end method

.method public abstract getImgSz()Lorg/openxmlformats/schemas/presentationml/x2006/main/STWebScreenSize$Enum;
.end method

.method public abstract getOrganizeInFolders()Z
.end method

.method public abstract getRelyOnVml()Z
.end method

.method public abstract getResizeGraphics()Z
.end method

.method public abstract getShowAnimation()Z
.end method

.method public abstract getUseLongFilenames()Z
.end method

.method public abstract isSetAllowPng()Z
.end method

.method public abstract isSetClr()Z
.end method

.method public abstract isSetEncoding()Z
.end method

.method public abstract isSetExtLst()Z
.end method

.method public abstract isSetImgSz()Z
.end method

.method public abstract isSetOrganizeInFolders()Z
.end method

.method public abstract isSetRelyOnVml()Z
.end method

.method public abstract isSetResizeGraphics()Z
.end method

.method public abstract isSetShowAnimation()Z
.end method

.method public abstract isSetUseLongFilenames()Z
.end method

.method public abstract setAllowPng(Z)V
.end method

.method public abstract setClr(Lorg/openxmlformats/schemas/presentationml/x2006/main/STWebColorType$Enum;)V
.end method

.method public abstract setEncoding(Ljava/lang/String;)V
.end method

.method public abstract setExtLst(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTExtensionList;)V
.end method

.method public abstract setImgSz(Lorg/openxmlformats/schemas/presentationml/x2006/main/STWebScreenSize$Enum;)V
.end method

.method public abstract setOrganizeInFolders(Z)V
.end method

.method public abstract setRelyOnVml(Z)V
.end method

.method public abstract setResizeGraphics(Z)V
.end method

.method public abstract setShowAnimation(Z)V
.end method

.method public abstract setUseLongFilenames(Z)V
.end method

.method public abstract unsetAllowPng()V
.end method

.method public abstract unsetClr()V
.end method

.method public abstract unsetEncoding()V
.end method

.method public abstract unsetExtLst()V
.end method

.method public abstract unsetImgSz()V
.end method

.method public abstract unsetOrganizeInFolders()V
.end method

.method public abstract unsetRelyOnVml()V
.end method

.method public abstract unsetResizeGraphics()V
.end method

.method public abstract unsetShowAnimation()V
.end method

.method public abstract unsetUseLongFilenames()V
.end method

.method public abstract xgetAllowPng()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetClr()Lorg/openxmlformats/schemas/presentationml/x2006/main/STWebColorType;
.end method

.method public abstract xgetEncoding()Lorg/openxmlformats/schemas/presentationml/x2006/main/STWebEncoding;
.end method

.method public abstract xgetImgSz()Lorg/openxmlformats/schemas/presentationml/x2006/main/STWebScreenSize;
.end method

.method public abstract xgetOrganizeInFolders()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetRelyOnVml()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetResizeGraphics()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetShowAnimation()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetUseLongFilenames()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xsetAllowPng(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetClr(Lorg/openxmlformats/schemas/presentationml/x2006/main/STWebColorType;)V
.end method

.method public abstract xsetEncoding(Lorg/openxmlformats/schemas/presentationml/x2006/main/STWebEncoding;)V
.end method

.method public abstract xsetImgSz(Lorg/openxmlformats/schemas/presentationml/x2006/main/STWebScreenSize;)V
.end method

.method public abstract xsetOrganizeInFolders(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetRelyOnVml(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetResizeGraphics(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetShowAnimation(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetUseLongFilenames(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method
