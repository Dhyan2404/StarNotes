.class public interface abstract Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRangeSet;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRangeSet;",
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

    const-string v2, "ctrangeset2c6etype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRangeSet;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRangeSet;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract getI1()J
.end method

.method public abstract getI2()J
.end method

.method public abstract getI3()J
.end method

.method public abstract getI4()J
.end method

.method public abstract getId()Ljava/lang/String;
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getRef()Ljava/lang/String;
.end method

.method public abstract getSheet()Ljava/lang/String;
.end method

.method public abstract isSetI1()Z
.end method

.method public abstract isSetI2()Z
.end method

.method public abstract isSetI3()Z
.end method

.method public abstract isSetI4()Z
.end method

.method public abstract isSetId()Z
.end method

.method public abstract isSetName()Z
.end method

.method public abstract isSetRef()Z
.end method

.method public abstract isSetSheet()Z
.end method

.method public abstract setI1(J)V
.end method

.method public abstract setI2(J)V
.end method

.method public abstract setI3(J)V
.end method

.method public abstract setI4(J)V
.end method

.method public abstract setId(Ljava/lang/String;)V
.end method

.method public abstract setName(Ljava/lang/String;)V
.end method

.method public abstract setRef(Ljava/lang/String;)V
.end method

.method public abstract setSheet(Ljava/lang/String;)V
.end method

.method public abstract unsetI1()V
.end method

.method public abstract unsetI2()V
.end method

.method public abstract unsetI3()V
.end method

.method public abstract unsetI4()V
.end method

.method public abstract unsetId()V
.end method

.method public abstract unsetName()V
.end method

.method public abstract unsetRef()V
.end method

.method public abstract unsetSheet()V
.end method

.method public abstract xgetI1()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xgetI2()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xgetI3()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xgetI4()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xgetId()Lorg/openxmlformats/schemas/officeDocument/x2006/relationships/STRelationshipId;
.end method

.method public abstract xgetName()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;
.end method

.method public abstract xgetRef()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STRef;
.end method

.method public abstract xgetSheet()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;
.end method

.method public abstract xsetI1(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method

.method public abstract xsetI2(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method

.method public abstract xsetI3(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method

.method public abstract xsetI4(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method

.method public abstract xsetId(Lorg/openxmlformats/schemas/officeDocument/x2006/relationships/STRelationshipId;)V
.end method

.method public abstract xsetName(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;)V
.end method

.method public abstract xsetRef(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STRef;)V
.end method

.method public abstract xsetSheet(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;)V
.end method
