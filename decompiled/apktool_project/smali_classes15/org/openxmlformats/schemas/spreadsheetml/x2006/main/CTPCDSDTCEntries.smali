.class public interface abstract Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPCDSDTCEntries;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPCDSDTCEntries;",
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

    const-string v2, "ctpcdsdtcentries90c8type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPCDSDTCEntries;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPCDSDTCEntries;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewE()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTError;
.end method

.method public abstract addNewM()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMissing;
.end method

.method public abstract addNewN()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTNumber;
.end method

.method public abstract addNewS()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTString;
.end method

.method public abstract getCount()J
.end method

.method public abstract getEArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTError;
.end method

.method public abstract getEArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTError;
.end method

.method public abstract getEList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTError;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getMArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMissing;
.end method

.method public abstract getMArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMissing;
.end method

.method public abstract getMList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMissing;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getNArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTNumber;
.end method

.method public abstract getNArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTNumber;
.end method

.method public abstract getNList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTNumber;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTString;
.end method

.method public abstract getSArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTString;
.end method

.method public abstract getSList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTString;",
            ">;"
        }
    .end annotation
.end method

.method public abstract insertNewE(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTError;
.end method

.method public abstract insertNewM(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMissing;
.end method

.method public abstract insertNewN(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTNumber;
.end method

.method public abstract insertNewS(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTString;
.end method

.method public abstract isSetCount()Z
.end method

.method public abstract removeE(I)V
.end method

.method public abstract removeM(I)V
.end method

.method public abstract removeN(I)V
.end method

.method public abstract removeS(I)V
.end method

.method public abstract setCount(J)V
.end method

.method public abstract setEArray(ILorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTError;)V
.end method

.method public abstract setEArray([Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTError;)V
.end method

.method public abstract setMArray(ILorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMissing;)V
.end method

.method public abstract setMArray([Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMissing;)V
.end method

.method public abstract setNArray(ILorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTNumber;)V
.end method

.method public abstract setNArray([Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTNumber;)V
.end method

.method public abstract setSArray(ILorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTString;)V
.end method

.method public abstract setSArray([Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTString;)V
.end method

.method public abstract sizeOfEArray()I
.end method

.method public abstract sizeOfMArray()I
.end method

.method public abstract sizeOfNArray()I
.end method

.method public abstract sizeOfSArray()I
.end method

.method public abstract unsetCount()V
.end method

.method public abstract xgetCount()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xsetCount(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method
