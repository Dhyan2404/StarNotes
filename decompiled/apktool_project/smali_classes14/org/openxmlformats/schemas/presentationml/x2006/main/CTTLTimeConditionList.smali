.class public interface abstract Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLTimeConditionList;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLTimeConditionList;",
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

    const-string v2, "cttltimeconditionlistebbbtype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLTimeConditionList;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLTimeConditionList;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewCond()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLTimeCondition;
.end method

.method public abstract getCondArray(I)Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLTimeCondition;
.end method

.method public abstract getCondArray()[Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLTimeCondition;
.end method

.method public abstract getCondList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLTimeCondition;",
            ">;"
        }
    .end annotation
.end method

.method public abstract insertNewCond(I)Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLTimeCondition;
.end method

.method public abstract removeCond(I)V
.end method

.method public abstract setCondArray(ILorg/openxmlformats/schemas/presentationml/x2006/main/CTTLTimeCondition;)V
.end method

.method public abstract setCondArray([Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTLTimeCondition;)V
.end method

.method public abstract sizeOfCondArray()I
.end method
