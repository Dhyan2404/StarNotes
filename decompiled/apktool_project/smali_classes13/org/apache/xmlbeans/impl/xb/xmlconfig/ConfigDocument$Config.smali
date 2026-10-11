.class public interface abstract Lorg/apache/xmlbeans/impl/xb/xmlconfig/ConfigDocument$Config;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xmlbeans/impl/xb/xmlconfig/ConfigDocument;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Config"
.end annotation


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/ElementFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/ElementFactory<",
            "Lorg/apache/xmlbeans/impl/xb/xmlconfig/ConfigDocument$Config;",
            ">;"
        }
    .end annotation
.end field

.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/ElementFactory;

    sget-object v1, Lorg/apache/xmlbeans/metadata/system/sXMLCONFIG/TypeSystemHolder;->typeSystem:Lorg/apache/xmlbeans/metadata/system/sXMLCONFIG/TypeSystemHolder;

    const-string v2, "configf467elemtype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/xmlbeans/impl/xb/xmlconfig/ConfigDocument$Config;->Factory:Lorg/apache/xmlbeans/impl/schema/ElementFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/apache/xmlbeans/impl/xb/xmlconfig/ConfigDocument$Config;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewExtension()Lorg/apache/xmlbeans/impl/xb/xmlconfig/Extensionconfig;
.end method

.method public abstract addNewNamespace()Lorg/apache/xmlbeans/impl/xb/xmlconfig/Nsconfig;
.end method

.method public abstract addNewQname()Lorg/apache/xmlbeans/impl/xb/xmlconfig/Qnameconfig;
.end method

.method public abstract addNewUsertype()Lorg/apache/xmlbeans/impl/xb/xmlconfig/Usertypeconfig;
.end method

.method public abstract getExtensionArray(I)Lorg/apache/xmlbeans/impl/xb/xmlconfig/Extensionconfig;
.end method

.method public abstract getExtensionArray()[Lorg/apache/xmlbeans/impl/xb/xmlconfig/Extensionconfig;
.end method

.method public abstract getExtensionList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/xmlbeans/impl/xb/xmlconfig/Extensionconfig;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getNamespaceArray(I)Lorg/apache/xmlbeans/impl/xb/xmlconfig/Nsconfig;
.end method

.method public abstract getNamespaceArray()[Lorg/apache/xmlbeans/impl/xb/xmlconfig/Nsconfig;
.end method

.method public abstract getNamespaceList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/xmlbeans/impl/xb/xmlconfig/Nsconfig;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getQnameArray(I)Lorg/apache/xmlbeans/impl/xb/xmlconfig/Qnameconfig;
.end method

.method public abstract getQnameArray()[Lorg/apache/xmlbeans/impl/xb/xmlconfig/Qnameconfig;
.end method

.method public abstract getQnameList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/xmlbeans/impl/xb/xmlconfig/Qnameconfig;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getUsertypeArray(I)Lorg/apache/xmlbeans/impl/xb/xmlconfig/Usertypeconfig;
.end method

.method public abstract getUsertypeArray()[Lorg/apache/xmlbeans/impl/xb/xmlconfig/Usertypeconfig;
.end method

.method public abstract getUsertypeList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/xmlbeans/impl/xb/xmlconfig/Usertypeconfig;",
            ">;"
        }
    .end annotation
.end method

.method public abstract insertNewExtension(I)Lorg/apache/xmlbeans/impl/xb/xmlconfig/Extensionconfig;
.end method

.method public abstract insertNewNamespace(I)Lorg/apache/xmlbeans/impl/xb/xmlconfig/Nsconfig;
.end method

.method public abstract insertNewQname(I)Lorg/apache/xmlbeans/impl/xb/xmlconfig/Qnameconfig;
.end method

.method public abstract insertNewUsertype(I)Lorg/apache/xmlbeans/impl/xb/xmlconfig/Usertypeconfig;
.end method

.method public abstract removeExtension(I)V
.end method

.method public abstract removeNamespace(I)V
.end method

.method public abstract removeQname(I)V
.end method

.method public abstract removeUsertype(I)V
.end method

.method public abstract setExtensionArray(ILorg/apache/xmlbeans/impl/xb/xmlconfig/Extensionconfig;)V
.end method

.method public abstract setExtensionArray([Lorg/apache/xmlbeans/impl/xb/xmlconfig/Extensionconfig;)V
.end method

.method public abstract setNamespaceArray(ILorg/apache/xmlbeans/impl/xb/xmlconfig/Nsconfig;)V
.end method

.method public abstract setNamespaceArray([Lorg/apache/xmlbeans/impl/xb/xmlconfig/Nsconfig;)V
.end method

.method public abstract setQnameArray(ILorg/apache/xmlbeans/impl/xb/xmlconfig/Qnameconfig;)V
.end method

.method public abstract setQnameArray([Lorg/apache/xmlbeans/impl/xb/xmlconfig/Qnameconfig;)V
.end method

.method public abstract setUsertypeArray(ILorg/apache/xmlbeans/impl/xb/xmlconfig/Usertypeconfig;)V
.end method

.method public abstract setUsertypeArray([Lorg/apache/xmlbeans/impl/xb/xmlconfig/Usertypeconfig;)V
.end method

.method public abstract sizeOfExtensionArray()I
.end method

.method public abstract sizeOfNamespaceArray()I
.end method

.method public abstract sizeOfQnameArray()I
.end method

.method public abstract sizeOfUsertypeArray()I
.end method
