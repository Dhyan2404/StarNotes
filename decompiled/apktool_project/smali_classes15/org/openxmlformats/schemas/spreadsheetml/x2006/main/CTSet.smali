.class public interface abstract Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSet;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSet;",
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

    const-string v2, "ctset25c1type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSet;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSet;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewSortByTuple()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTuples;
.end method

.method public abstract addNewTpls()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTuples;
.end method

.method public abstract getCount()J
.end method

.method public abstract getMaxRank()I
.end method

.method public abstract getQueryFailed()Z
.end method

.method public abstract getSetDefinition()Ljava/lang/String;
.end method

.method public abstract getSortByTuple()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTuples;
.end method

.method public abstract getSortType()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STSortType$Enum;
.end method

.method public abstract getTplsArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTuples;
.end method

.method public abstract getTplsArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTuples;
.end method

.method public abstract getTplsList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTuples;",
            ">;"
        }
    .end annotation
.end method

.method public abstract insertNewTpls(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTuples;
.end method

.method public abstract isSetCount()Z
.end method

.method public abstract isSetQueryFailed()Z
.end method

.method public abstract isSetSortByTuple()Z
.end method

.method public abstract isSetSortType()Z
.end method

.method public abstract removeTpls(I)V
.end method

.method public abstract setCount(J)V
.end method

.method public abstract setMaxRank(I)V
.end method

.method public abstract setQueryFailed(Z)V
.end method

.method public abstract setSetDefinition(Ljava/lang/String;)V
.end method

.method public abstract setSortByTuple(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTuples;)V
.end method

.method public abstract setSortType(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STSortType$Enum;)V
.end method

.method public abstract setTplsArray(ILorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTuples;)V
.end method

.method public abstract setTplsArray([Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTuples;)V
.end method

.method public abstract sizeOfTplsArray()I
.end method

.method public abstract unsetCount()V
.end method

.method public abstract unsetQueryFailed()V
.end method

.method public abstract unsetSortByTuple()V
.end method

.method public abstract unsetSortType()V
.end method

.method public abstract xgetCount()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xgetMaxRank()Lorg/apache/xmlbeans/XmlInt;
.end method

.method public abstract xgetQueryFailed()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetSetDefinition()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;
.end method

.method public abstract xgetSortType()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STSortType;
.end method

.method public abstract xsetCount(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method

.method public abstract xsetMaxRank(Lorg/apache/xmlbeans/XmlInt;)V
.end method

.method public abstract xsetQueryFailed(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetSetDefinition(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;)V
.end method

.method public abstract xsetSortType(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STSortType;)V
.end method
