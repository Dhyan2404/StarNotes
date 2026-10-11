.class public interface abstract Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTVolTopic;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTVolTopic;",
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

    const-string v2, "ctvoltopic23e5type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTVolTopic;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTVolTopic;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewStp()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;
.end method

.method public abstract addNewTr()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTVolTopicRef;
.end method

.method public abstract addStp(Ljava/lang/String;)V
.end method

.method public abstract getStpArray(I)Ljava/lang/String;
.end method

.method public abstract getStpArray()[Ljava/lang/String;
.end method

.method public abstract getStpList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getT()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STVolValueType$Enum;
.end method

.method public abstract getTrArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTVolTopicRef;
.end method

.method public abstract getTrArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTVolTopicRef;
.end method

.method public abstract getTrList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTVolTopicRef;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getV()Ljava/lang/String;
.end method

.method public abstract insertNewStp(I)Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;
.end method

.method public abstract insertNewTr(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTVolTopicRef;
.end method

.method public abstract insertStp(ILjava/lang/String;)V
.end method

.method public abstract isSetT()Z
.end method

.method public abstract removeStp(I)V
.end method

.method public abstract removeTr(I)V
.end method

.method public abstract setStpArray(ILjava/lang/String;)V
.end method

.method public abstract setStpArray([Ljava/lang/String;)V
.end method

.method public abstract setT(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STVolValueType$Enum;)V
.end method

.method public abstract setTrArray(ILorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTVolTopicRef;)V
.end method

.method public abstract setTrArray([Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTVolTopicRef;)V
.end method

.method public abstract setV(Ljava/lang/String;)V
.end method

.method public abstract sizeOfStpArray()I
.end method

.method public abstract sizeOfTrArray()I
.end method

.method public abstract unsetT()V
.end method

.method public abstract xgetStpArray(I)Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;
.end method

.method public abstract xgetStpArray()[Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;
.end method

.method public abstract xgetStpList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;",
            ">;"
        }
    .end annotation
.end method

.method public abstract xgetT()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STVolValueType;
.end method

.method public abstract xgetV()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;
.end method

.method public abstract xsetStpArray(ILorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;)V
.end method

.method public abstract xsetStpArray([Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;)V
.end method

.method public abstract xsetT(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STVolValueType;)V
.end method

.method public abstract xsetV(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;)V
.end method
