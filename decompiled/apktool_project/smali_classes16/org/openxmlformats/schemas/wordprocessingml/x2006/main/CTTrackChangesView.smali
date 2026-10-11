.class public interface abstract Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTrackChangesView;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTrackChangesView;",
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

    const-string v2, "cttrackchangesview2c4btype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTrackChangesView;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTTrackChangesView;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract getComments()Ljava/lang/Object;
.end method

.method public abstract getFormatting()Ljava/lang/Object;
.end method

.method public abstract getInkAnnotations()Ljava/lang/Object;
.end method

.method public abstract getInsDel()Ljava/lang/Object;
.end method

.method public abstract getMarkup()Ljava/lang/Object;
.end method

.method public abstract isSetComments()Z
.end method

.method public abstract isSetFormatting()Z
.end method

.method public abstract isSetInkAnnotations()Z
.end method

.method public abstract isSetInsDel()Z
.end method

.method public abstract isSetMarkup()Z
.end method

.method public abstract setComments(Ljava/lang/Object;)V
.end method

.method public abstract setFormatting(Ljava/lang/Object;)V
.end method

.method public abstract setInkAnnotations(Ljava/lang/Object;)V
.end method

.method public abstract setInsDel(Ljava/lang/Object;)V
.end method

.method public abstract setMarkup(Ljava/lang/Object;)V
.end method

.method public abstract unsetComments()V
.end method

.method public abstract unsetFormatting()V
.end method

.method public abstract unsetInkAnnotations()V
.end method

.method public abstract unsetInsDel()V
.end method

.method public abstract unsetMarkup()V
.end method

.method public abstract xgetComments()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STOnOff;
.end method

.method public abstract xgetFormatting()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STOnOff;
.end method

.method public abstract xgetInkAnnotations()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STOnOff;
.end method

.method public abstract xgetInsDel()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STOnOff;
.end method

.method public abstract xgetMarkup()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STOnOff;
.end method

.method public abstract xsetComments(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STOnOff;)V
.end method

.method public abstract xsetFormatting(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STOnOff;)V
.end method

.method public abstract xsetInkAnnotations(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STOnOff;)V
.end method

.method public abstract xsetInsDel(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STOnOff;)V
.end method

.method public abstract xsetMarkup(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STOnOff;)V
.end method
