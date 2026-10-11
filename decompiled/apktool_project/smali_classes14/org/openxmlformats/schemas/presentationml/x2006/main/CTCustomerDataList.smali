.class public interface abstract Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCustomerDataList;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCustomerDataList;",
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

    const-string v2, "ctcustomerdatalist8b7ftype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCustomerDataList;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCustomerDataList;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewCustData()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCustomerData;
.end method

.method public abstract addNewTags()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTagsData;
.end method

.method public abstract getCustDataArray(I)Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCustomerData;
.end method

.method public abstract getCustDataArray()[Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCustomerData;
.end method

.method public abstract getCustDataList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCustomerData;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getTags()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTagsData;
.end method

.method public abstract insertNewCustData(I)Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCustomerData;
.end method

.method public abstract isSetTags()Z
.end method

.method public abstract removeCustData(I)V
.end method

.method public abstract setCustDataArray(ILorg/openxmlformats/schemas/presentationml/x2006/main/CTCustomerData;)V
.end method

.method public abstract setCustDataArray([Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCustomerData;)V
.end method

.method public abstract setTags(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTTagsData;)V
.end method

.method public abstract sizeOfCustDataArray()I
.end method

.method public abstract unsetTags()V
.end method
