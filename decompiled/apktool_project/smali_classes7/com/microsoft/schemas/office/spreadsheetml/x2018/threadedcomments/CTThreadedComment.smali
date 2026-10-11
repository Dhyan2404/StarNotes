.class public interface abstract Lcom/microsoft/schemas/office/spreadsheetml/x2018/threadedcomments/CTThreadedComment;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lcom/microsoft/schemas/office/spreadsheetml/x2018/threadedcomments/CTThreadedComment;",
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

    const-string v2, "ctthreadedcomment455dtype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lcom/microsoft/schemas/office/spreadsheetml/x2018/threadedcomments/CTThreadedComment;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lcom/microsoft/schemas/office/spreadsheetml/x2018/threadedcomments/CTThreadedComment;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewExtLst()Lorg/apache/xmlbeans/XmlObject;
.end method

.method public abstract addNewMentions()Lcom/microsoft/schemas/office/spreadsheetml/x2018/threadedcomments/CTThreadedCommentMentions;
.end method

.method public abstract getDT()Ljava/util/Calendar;
.end method

.method public abstract getDone()Z
.end method

.method public abstract getExtLst()Lorg/apache/xmlbeans/XmlObject;
.end method

.method public abstract getId()Ljava/lang/String;
.end method

.method public abstract getMentions()Lcom/microsoft/schemas/office/spreadsheetml/x2018/threadedcomments/CTThreadedCommentMentions;
.end method

.method public abstract getParentId()Ljava/lang/String;
.end method

.method public abstract getPersonId()Ljava/lang/String;
.end method

.method public abstract getRef()Ljava/lang/String;
.end method

.method public abstract getText()Ljava/lang/String;
.end method

.method public abstract isSetDT()Z
.end method

.method public abstract isSetDone()Z
.end method

.method public abstract isSetExtLst()Z
.end method

.method public abstract isSetMentions()Z
.end method

.method public abstract isSetParentId()Z
.end method

.method public abstract isSetRef()Z
.end method

.method public abstract isSetText()Z
.end method

.method public abstract setDT(Ljava/util/Calendar;)V
.end method

.method public abstract setDone(Z)V
.end method

.method public abstract setExtLst(Lorg/apache/xmlbeans/XmlObject;)V
.end method

.method public abstract setId(Ljava/lang/String;)V
.end method

.method public abstract setMentions(Lcom/microsoft/schemas/office/spreadsheetml/x2018/threadedcomments/CTThreadedCommentMentions;)V
.end method

.method public abstract setParentId(Ljava/lang/String;)V
.end method

.method public abstract setPersonId(Ljava/lang/String;)V
.end method

.method public abstract setRef(Ljava/lang/String;)V
.end method

.method public abstract setText(Ljava/lang/String;)V
.end method

.method public abstract unsetDT()V
.end method

.method public abstract unsetDone()V
.end method

.method public abstract unsetExtLst()V
.end method

.method public abstract unsetMentions()V
.end method

.method public abstract unsetParentId()V
.end method

.method public abstract unsetRef()V
.end method

.method public abstract unsetText()V
.end method

.method public abstract xgetDT()Lorg/apache/xmlbeans/XmlDateTime;
.end method

.method public abstract xgetDone()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetId()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STGuid;
.end method

.method public abstract xgetParentId()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STGuid;
.end method

.method public abstract xgetPersonId()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STGuid;
.end method

.method public abstract xgetRef()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STRef;
.end method

.method public abstract xgetText()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;
.end method

.method public abstract xsetDT(Lorg/apache/xmlbeans/XmlDateTime;)V
.end method

.method public abstract xsetDone(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetId(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STGuid;)V
.end method

.method public abstract xsetParentId(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STGuid;)V
.end method

.method public abstract xsetPersonId(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STGuid;)V
.end method

.method public abstract xsetRef(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STRef;)V
.end method

.method public abstract xsetText(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STXstring;)V
.end method
