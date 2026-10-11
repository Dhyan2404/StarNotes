.class public interface abstract Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTConnections;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTConnections;",
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

    const-string v2, "ctconnectionsf5f4type"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTConnections;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTConnections;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewConnection()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTConnection;
.end method

.method public abstract getConnectionArray(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTConnection;
.end method

.method public abstract getConnectionArray()[Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTConnection;
.end method

.method public abstract getConnectionList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTConnection;",
            ">;"
        }
    .end annotation
.end method

.method public abstract insertNewConnection(I)Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTConnection;
.end method

.method public abstract removeConnection(I)V
.end method

.method public abstract setConnectionArray(ILorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTConnection;)V
.end method

.method public abstract setConnectionArray([Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTConnection;)V
.end method

.method public abstract sizeOfConnectionArray()I
.end method
