.class public interface abstract Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCommonSlideData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCommonSlideData;",
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

    const-string v2, "ctcommonslidedata8c7ftype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCommonSlideData;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCommonSlideData;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewBg()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTBackground;
.end method

.method public abstract addNewControls()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTControlList;
.end method

.method public abstract addNewCustDataLst()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCustomerDataList;
.end method

.method public abstract addNewExtLst()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTExtensionList;
.end method

.method public abstract addNewSpTree()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;
.end method

.method public abstract getBg()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTBackground;
.end method

.method public abstract getControls()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTControlList;
.end method

.method public abstract getCustDataLst()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCustomerDataList;
.end method

.method public abstract getExtLst()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTExtensionList;
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getSpTree()Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;
.end method

.method public abstract isSetBg()Z
.end method

.method public abstract isSetControls()Z
.end method

.method public abstract isSetCustDataLst()Z
.end method

.method public abstract isSetExtLst()Z
.end method

.method public abstract isSetName()Z
.end method

.method public abstract setBg(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTBackground;)V
.end method

.method public abstract setControls(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTControlList;)V
.end method

.method public abstract setCustDataLst(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTCustomerDataList;)V
.end method

.method public abstract setExtLst(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTExtensionList;)V
.end method

.method public abstract setName(Ljava/lang/String;)V
.end method

.method public abstract setSpTree(Lorg/openxmlformats/schemas/presentationml/x2006/main/CTGroupShape;)V
.end method

.method public abstract unsetBg()V
.end method

.method public abstract unsetControls()V
.end method

.method public abstract unsetCustDataLst()V
.end method

.method public abstract unsetExtLst()V
.end method

.method public abstract unsetName()V
.end method

.method public abstract xgetName()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xsetName(Lorg/apache/xmlbeans/XmlString;)V
.end method
