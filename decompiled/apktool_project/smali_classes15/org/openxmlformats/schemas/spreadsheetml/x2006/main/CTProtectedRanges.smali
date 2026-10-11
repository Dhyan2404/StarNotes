.class public interface abstract Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTProtectedRanges;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTProtectedRanges;",
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

    const-string v2, "ctprotectedranges7e83type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTProtectedRanges;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTProtectedRanges;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewProtectedRange()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTProtectedRange;
.end method

.method public abstract getProtectedRangeArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTProtectedRange;
.end method

.method public abstract getProtectedRangeArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTProtectedRange;
.end method

.method public abstract getProtectedRangeList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTProtectedRange;",
            ">;"
        }
    .end annotation
.end method

.method public abstract insertNewProtectedRange(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTProtectedRange;
.end method

.method public abstract removeProtectedRange(I)V
.end method

.method public abstract setProtectedRangeArray(ILorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTProtectedRange;)V
.end method

.method public abstract setProtectedRangeArray([Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTProtectedRange;)V
.end method

.method public abstract sizeOfProtectedRangeArray()I
.end method
