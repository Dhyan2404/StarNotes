.class public interface abstract Lorg/apache/xmlbeans/impl/xb/xmlconfig/Extensionconfig;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xmlbeans/impl/xb/xmlconfig/Extensionconfig$PrePostSet;,
        Lorg/apache/xmlbeans/impl/xb/xmlconfig/Extensionconfig$Interface;
    }
.end annotation


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/apache/xmlbeans/impl/xb/xmlconfig/Extensionconfig;",
            ">;"
        }
    .end annotation
.end field

.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    sget-object v1, Lorg/apache/xmlbeans/metadata/system/sXMLCONFIG/TypeSystemHolder;->typeSystem:Lorg/apache/xmlbeans/metadata/system/sXMLCONFIG/TypeSystemHolder;

    const-string v2, "extensionconfig2ac2type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/xmlbeans/impl/xb/xmlconfig/Extensionconfig;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/apache/xmlbeans/impl/xb/xmlconfig/Extensionconfig;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewInterface()Lorg/apache/xmlbeans/impl/xb/xmlconfig/Extensionconfig$Interface;
.end method

.method public abstract addNewPrePostSet()Lorg/apache/xmlbeans/impl/xb/xmlconfig/Extensionconfig$PrePostSet;
.end method

.method public abstract getFor()Ljava/lang/Object;
.end method

.method public abstract getInterfaceArray(I)Lorg/apache/xmlbeans/impl/xb/xmlconfig/Extensionconfig$Interface;
.end method

.method public abstract getInterfaceArray()[Lorg/apache/xmlbeans/impl/xb/xmlconfig/Extensionconfig$Interface;
.end method

.method public abstract getInterfaceList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/xmlbeans/impl/xb/xmlconfig/Extensionconfig$Interface;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPrePostSet()Lorg/apache/xmlbeans/impl/xb/xmlconfig/Extensionconfig$PrePostSet;
.end method

.method public abstract insertNewInterface(I)Lorg/apache/xmlbeans/impl/xb/xmlconfig/Extensionconfig$Interface;
.end method

.method public abstract isSetFor()Z
.end method

.method public abstract isSetPrePostSet()Z
.end method

.method public abstract removeInterface(I)V
.end method

.method public abstract setFor(Ljava/lang/Object;)V
.end method

.method public abstract setInterfaceArray(ILorg/apache/xmlbeans/impl/xb/xmlconfig/Extensionconfig$Interface;)V
.end method

.method public abstract setInterfaceArray([Lorg/apache/xmlbeans/impl/xb/xmlconfig/Extensionconfig$Interface;)V
.end method

.method public abstract setPrePostSet(Lorg/apache/xmlbeans/impl/xb/xmlconfig/Extensionconfig$PrePostSet;)V
.end method

.method public abstract sizeOfInterfaceArray()I
.end method

.method public abstract unsetFor()V
.end method

.method public abstract unsetPrePostSet()V
.end method

.method public abstract xgetFor()Lorg/apache/xmlbeans/impl/xb/xmlconfig/JavaNameList;
.end method

.method public abstract xsetFor(Lorg/apache/xmlbeans/impl/xb/xmlconfig/JavaNameList;)V
.end method
