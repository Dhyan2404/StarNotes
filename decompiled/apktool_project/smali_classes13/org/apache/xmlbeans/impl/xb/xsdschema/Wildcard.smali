.class public interface abstract Lorg/apache/xmlbeans/impl/xb/xsdschema/Wildcard;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/impl/xb/xsdschema/Annotated;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xmlbeans/impl/xb/xsdschema/Wildcard$ProcessContents;
    }
.end annotation


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/apache/xmlbeans/impl/xb/xsdschema/Wildcard;",
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

    const-string v2, "wildcarde0b9type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/xmlbeans/impl/xb/xsdschema/Wildcard;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/apache/xmlbeans/impl/xb/xsdschema/Wildcard;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract getNamespace()Ljava/lang/Object;
.end method

.method public abstract getProcessContents()Lorg/apache/xmlbeans/impl/xb/xsdschema/Wildcard$ProcessContents$Enum;
.end method

.method public abstract isSetNamespace()Z
.end method

.method public abstract isSetProcessContents()Z
.end method

.method public abstract setNamespace(Ljava/lang/Object;)V
.end method

.method public abstract setProcessContents(Lorg/apache/xmlbeans/impl/xb/xsdschema/Wildcard$ProcessContents$Enum;)V
.end method

.method public abstract unsetNamespace()V
.end method

.method public abstract unsetProcessContents()V
.end method

.method public abstract xgetNamespace()Lorg/apache/xmlbeans/impl/xb/xsdschema/NamespaceList;
.end method

.method public abstract xgetProcessContents()Lorg/apache/xmlbeans/impl/xb/xsdschema/Wildcard$ProcessContents;
.end method

.method public abstract xsetNamespace(Lorg/apache/xmlbeans/impl/xb/xsdschema/NamespaceList;)V
.end method

.method public abstract xsetProcessContents(Lorg/apache/xmlbeans/impl/xb/xsdschema/Wildcard$ProcessContents;)V
.end method
