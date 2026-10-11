.class public interface abstract Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblGridBase;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblGridBase;",
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

    const-string v2, "cttblgridbasea11dtype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblGridBase;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblGridBase;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewGridCol()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblGridCol;
.end method

.method public abstract getGridColArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblGridCol;
.end method

.method public abstract getGridColArray()[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblGridCol;
.end method

.method public abstract getGridColList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblGridCol;",
            ">;"
        }
    .end annotation
.end method

.method public abstract insertNewGridCol(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblGridCol;
.end method

.method public abstract removeGridCol(I)V
.end method

.method public abstract setGridColArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblGridCol;)V
.end method

.method public abstract setGridColArray([Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTblGridCol;)V
.end method

.method public abstract sizeOfGridColArray()I
.end method
