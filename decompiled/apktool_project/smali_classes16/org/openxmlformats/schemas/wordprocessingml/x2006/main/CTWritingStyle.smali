.class public interface abstract Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTWritingStyle;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTWritingStyle;",
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

    const-string v2, "ctwritingstyled853type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTWritingStyle;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTWritingStyle;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract getAppName()Ljava/lang/String;
.end method

.method public abstract getCheckStyle()Ljava/lang/Object;
.end method

.method public abstract getDllVersion()Ljava/lang/String;
.end method

.method public abstract getLang()Ljava/lang/String;
.end method

.method public abstract getNlCheck()Ljava/lang/Object;
.end method

.method public abstract getVendorID()Ljava/lang/String;
.end method

.method public abstract isSetNlCheck()Z
.end method

.method public abstract setAppName(Ljava/lang/String;)V
.end method

.method public abstract setCheckStyle(Ljava/lang/Object;)V
.end method

.method public abstract setDllVersion(Ljava/lang/String;)V
.end method

.method public abstract setLang(Ljava/lang/String;)V
.end method

.method public abstract setNlCheck(Ljava/lang/Object;)V
.end method

.method public abstract setVendorID(Ljava/lang/String;)V
.end method

.method public abstract unsetNlCheck()V
.end method

.method public abstract xgetAppName()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;
.end method

.method public abstract xgetCheckStyle()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STOnOff;
.end method

.method public abstract xgetDllVersion()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;
.end method

.method public abstract xgetLang()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STLang;
.end method

.method public abstract xgetNlCheck()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STOnOff;
.end method

.method public abstract xgetVendorID()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;
.end method

.method public abstract xsetAppName(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;)V
.end method

.method public abstract xsetCheckStyle(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STOnOff;)V
.end method

.method public abstract xsetDllVersion(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;)V
.end method

.method public abstract xsetLang(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STLang;)V
.end method

.method public abstract xsetNlCheck(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STOnOff;)V
.end method

.method public abstract xsetVendorID(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;)V
.end method
