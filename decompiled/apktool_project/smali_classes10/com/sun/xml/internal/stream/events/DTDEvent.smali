.class public Lcom/sun/xml/internal/stream/events/DTDEvent;
.super Lcom/sun/xml/internal/stream/events/DummyEvent;
.source "SourceFile"

# interfaces
.implements Ljavax/xml/stream/events/DTD;


# instance fields
.field private fDoctypeDeclaration:Ljava/lang/String;

.field private fEntities:Ljava/util/List;

.field private fNotations:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/sun/xml/internal/stream/events/DummyEvent;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/sun/xml/internal/stream/events/DTDEvent;->init()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/sun/xml/internal/stream/events/DummyEvent;-><init>()V

    .line 4
    invoke-virtual {p0}, Lcom/sun/xml/internal/stream/events/DTDEvent;->init()V

    .line 5
    iput-object p1, p0, Lcom/sun/xml/internal/stream/events/DTDEvent;->fDoctypeDeclaration:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDocumentTypeDeclaration()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/xml/internal/stream/events/DTDEvent;->fDoctypeDeclaration:Ljava/lang/String;

    return-object p0
.end method

.method public getEntities()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/sun/xml/internal/stream/events/DTDEvent;->fEntities:Ljava/util/List;

    return-object p0
.end method

.method public getNotations()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/sun/xml/internal/stream/events/DTDEvent;->fNotations:Ljava/util/List;

    return-object p0
.end method

.method public getProcessedDTD()Ljava/lang/Object;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public init()V
    .locals 1

    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Lcom/sun/xml/internal/stream/events/DummyEvent;->setEventType(I)V

    return-void
.end method

.method public setDocumentTypeDeclaration(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/xml/internal/stream/events/DTDEvent;->fDoctypeDeclaration:Ljava/lang/String;

    return-void
.end method

.method public setEntities(Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/xml/internal/stream/events/DTDEvent;->fEntities:Ljava/util/List;

    return-void
.end method

.method public setNotations(Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/xml/internal/stream/events/DTDEvent;->fNotations:Ljava/util/List;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/xml/internal/stream/events/DTDEvent;->fDoctypeDeclaration:Ljava/lang/String;

    return-object p0
.end method
