.class public interface abstract Lorg/apache/xmlbeans/impl/xb/xmlschema/SpaceAttribute;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xmlbeans/impl/xb/xmlschema/SpaceAttribute$Space;
    }
.end annotation


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/apache/xmlbeans/impl/xb/xmlschema/SpaceAttribute;",
            ">;"
        }
    .end annotation
.end field

.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    sget-object v1, Lorg/apache/xmlbeans/metadata/system/sXMLLANG/TypeSystemHolder;->typeSystem:Lorg/apache/xmlbeans/metadata/system/sXMLLANG/TypeSystemHolder;

    const-string v2, "space9344attrtypetype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/xmlbeans/impl/xb/xmlschema/SpaceAttribute;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/apache/xmlbeans/impl/xb/xmlschema/SpaceAttribute;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract getSpace()Lorg/apache/xmlbeans/impl/xb/xmlschema/SpaceAttribute$Space$Enum;
.end method

.method public abstract isSetSpace()Z
.end method

.method public abstract setSpace(Lorg/apache/xmlbeans/impl/xb/xmlschema/SpaceAttribute$Space$Enum;)V
.end method

.method public abstract unsetSpace()V
.end method

.method public abstract xgetSpace()Lorg/apache/xmlbeans/impl/xb/xmlschema/SpaceAttribute$Space;
.end method

.method public abstract xsetSpace(Lorg/apache/xmlbeans/impl/xb/xmlschema/SpaceAttribute$Space;)V
.end method
