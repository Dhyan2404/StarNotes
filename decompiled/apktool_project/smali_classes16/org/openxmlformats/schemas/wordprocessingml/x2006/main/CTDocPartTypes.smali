.class public interface abstract Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocPartTypes;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocPartTypes;",
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

    const-string v2, "ctdocparttypesc33atype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocPartTypes;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocPartTypes;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewType()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocPartType;
.end method

.method public abstract getAll()Ljava/lang/Object;
.end method

.method public abstract getTypeArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocPartType;
.end method

.method public abstract getTypeArray()[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocPartType;
.end method

.method public abstract getTypeList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocPartType;",
            ">;"
        }
    .end annotation
.end method

.method public abstract insertNewType(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocPartType;
.end method

.method public abstract isSetAll()Z
.end method

.method public abstract removeType(I)V
.end method

.method public abstract setAll(Ljava/lang/Object;)V
.end method

.method public abstract setTypeArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocPartType;)V
.end method

.method public abstract setTypeArray([Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocPartType;)V
.end method

.method public abstract sizeOfTypeArray()I
.end method

.method public abstract unsetAll()V
.end method

.method public abstract xgetAll()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STOnOff;
.end method

.method public abstract xsetAll(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STOnOff;)V
.end method
