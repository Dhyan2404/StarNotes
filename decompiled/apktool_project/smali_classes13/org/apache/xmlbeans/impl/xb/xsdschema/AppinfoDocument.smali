.class public interface abstract Lorg/apache/xmlbeans/impl/xb/xsdschema/AppinfoDocument;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xmlbeans/impl/xb/xsdschema/AppinfoDocument$Appinfo;
    }
.end annotation


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/apache/xmlbeans/impl/xb/xsdschema/AppinfoDocument;",
            ">;"
        }
    .end annotation
.end field

.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    sget-object v1, Lorg/apache/xmlbeans/metadata/system/sXMLSCHEMA/TypeSystemHolder;->typeSystem:Lorg/apache/xmlbeans/metadata/system/sXMLSCHEMA/TypeSystemHolder;

    const-string v2, "appinfo2ea6doctype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/xmlbeans/impl/xb/xsdschema/AppinfoDocument;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/apache/xmlbeans/impl/xb/xsdschema/AppinfoDocument;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewAppinfo()Lorg/apache/xmlbeans/impl/xb/xsdschema/AppinfoDocument$Appinfo;
.end method

.method public abstract getAppinfo()Lorg/apache/xmlbeans/impl/xb/xsdschema/AppinfoDocument$Appinfo;
.end method

.method public abstract setAppinfo(Lorg/apache/xmlbeans/impl/xb/xsdschema/AppinfoDocument$Appinfo;)V
.end method
