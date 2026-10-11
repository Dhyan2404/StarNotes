.class public interface abstract Lcom/microsoft/schemas/office/spreadsheetml/x2018/threadedcomments/ThreadedCommentsDocument;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lcom/microsoft/schemas/office/spreadsheetml/x2018/threadedcomments/ThreadedCommentsDocument;",
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

    const-string v2, "threadedcomments8002doctype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lcom/microsoft/schemas/office/spreadsheetml/x2018/threadedcomments/ThreadedCommentsDocument;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lcom/microsoft/schemas/office/spreadsheetml/x2018/threadedcomments/ThreadedCommentsDocument;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewThreadedComments()Lcom/microsoft/schemas/office/spreadsheetml/x2018/threadedcomments/CTThreadedComments;
.end method

.method public abstract getThreadedComments()Lcom/microsoft/schemas/office/spreadsheetml/x2018/threadedcomments/CTThreadedComments;
.end method

.method public abstract setThreadedComments(Lcom/microsoft/schemas/office/spreadsheetml/x2018/threadedcomments/CTThreadedComments;)V
.end method
