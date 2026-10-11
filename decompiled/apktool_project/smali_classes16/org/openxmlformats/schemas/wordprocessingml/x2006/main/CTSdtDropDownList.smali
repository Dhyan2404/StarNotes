.class public interface abstract Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtDropDownList;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtDropDownList;",
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

    const-string v2, "ctsdtdropdownlist5880type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtDropDownList;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtDropDownList;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewListItem()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtListItem;
.end method

.method public abstract getLastValue()Ljava/lang/String;
.end method

.method public abstract getListItemArray(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtListItem;
.end method

.method public abstract getListItemArray()[Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtListItem;
.end method

.method public abstract getListItemList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtListItem;",
            ">;"
        }
    .end annotation
.end method

.method public abstract insertNewListItem(I)Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtListItem;
.end method

.method public abstract isSetLastValue()Z
.end method

.method public abstract removeListItem(I)V
.end method

.method public abstract setLastValue(Ljava/lang/String;)V
.end method

.method public abstract setListItemArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtListItem;)V
.end method

.method public abstract setListItemArray([Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTSdtListItem;)V
.end method

.method public abstract sizeOfListItemArray()I
.end method

.method public abstract unsetLastValue()V
.end method

.method public abstract xgetLastValue()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;
.end method

.method public abstract xsetLastValue(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STString;)V
.end method
