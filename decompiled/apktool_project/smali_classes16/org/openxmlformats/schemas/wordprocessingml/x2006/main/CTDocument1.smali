.class public interface abstract Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocument1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocumentBase;


# static fields
.field public static final Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/xmlbeans/impl/schema/DocumentFactory<",
            "Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocument1;",
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

    const-string v2, "ctdocument64adtype"

    invoke-direct {v0, v1, v2}, Lorg/apache/xmlbeans/impl/schema/DocumentFactory;-><init>(Lorg/apache/xmlbeans/SchemaTypeSystem;Ljava/lang/String;)V

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocument1;->Factory:Lorg/apache/xmlbeans/impl/schema/DocumentFactory;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/ElementFactory;->getType()Lorg/apache/xmlbeans/SchemaType;

    move-result-object v0

    sput-object v0, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTDocument1;->type:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewBody()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBody;
.end method

.method public abstract getBody()Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBody;
.end method

.method public abstract getConformance()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STConformanceClass$Enum;
.end method

.method public abstract isSetBody()Z
.end method

.method public abstract isSetConformance()Z
.end method

.method public abstract setBody(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTBody;)V
.end method

.method public abstract setConformance(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STConformanceClass$Enum;)V
.end method

.method public abstract unsetBody()V
.end method

.method public abstract unsetConformance()V
.end method

.method public abstract xgetConformance()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STConformanceClass;
.end method

.method public abstract xsetConformance(Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STConformanceClass;)V
.end method
