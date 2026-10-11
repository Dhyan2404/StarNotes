.class public interface abstract Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSortState;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSortState;",
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

    const-string v2, "ctsortstatea372type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSortState;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSortState;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewExtLst()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExtensionList;
.end method

.method public abstract addNewSortCondition()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSortCondition;
.end method

.method public abstract getCaseSensitive()Z
.end method

.method public abstract getColumnSort()Z
.end method

.method public abstract getExtLst()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExtensionList;
.end method

.method public abstract getRef()Ljava/lang/String;
.end method

.method public abstract getSortConditionArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSortCondition;
.end method

.method public abstract getSortConditionArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSortCondition;
.end method

.method public abstract getSortConditionList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSortCondition;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSortMethod()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STSortMethod$Enum;
.end method

.method public abstract insertNewSortCondition(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSortCondition;
.end method

.method public abstract isSetCaseSensitive()Z
.end method

.method public abstract isSetColumnSort()Z
.end method

.method public abstract isSetExtLst()Z
.end method

.method public abstract isSetSortMethod()Z
.end method

.method public abstract removeSortCondition(I)V
.end method

.method public abstract setCaseSensitive(Z)V
.end method

.method public abstract setColumnSort(Z)V
.end method

.method public abstract setExtLst(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExtensionList;)V
.end method

.method public abstract setRef(Ljava/lang/String;)V
.end method

.method public abstract setSortConditionArray(ILorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSortCondition;)V
.end method

.method public abstract setSortConditionArray([Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSortCondition;)V
.end method

.method public abstract setSortMethod(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STSortMethod$Enum;)V
.end method

.method public abstract sizeOfSortConditionArray()I
.end method

.method public abstract unsetCaseSensitive()V
.end method

.method public abstract unsetColumnSort()V
.end method

.method public abstract unsetExtLst()V
.end method

.method public abstract unsetSortMethod()V
.end method

.method public abstract xgetCaseSensitive()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetColumnSort()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetRef()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STRef;
.end method

.method public abstract xgetSortMethod()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STSortMethod;
.end method

.method public abstract xsetCaseSensitive(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetColumnSort(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetRef(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STRef;)V
.end method

.method public abstract xsetSortMethod(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STSortMethod;)V
.end method
