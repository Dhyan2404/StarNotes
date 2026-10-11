.class public interface abstract Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocPartBehaviors;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocPartBehaviors;",
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

    const-string v2, "ctdocpartbehaviors0952type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocPartBehaviors;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocPartBehaviors;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewBehavior()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocPartBehavior;
.end method

.method public abstract getBehaviorArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocPartBehavior;
.end method

.method public abstract getBehaviorArray()[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocPartBehavior;
.end method

.method public abstract getBehaviorList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocPartBehavior;",
            ">;"
        }
    .end annotation
.end method

.method public abstract insertNewBehavior(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocPartBehavior;
.end method

.method public abstract removeBehavior(I)V
.end method

.method public abstract setBehaviorArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocPartBehavior;)V
.end method

.method public abstract setBehaviorArray([Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocPartBehavior;)V
.end method

.method public abstract sizeOfBehaviorArray()I
.end method
