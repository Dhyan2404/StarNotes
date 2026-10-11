.class public Lorg/apache/xerces/dom/events/MouseEventImpl;
.super Lorg/apache/xerces/dom/events/UIEventImpl;
.source "SourceFile"

# interfaces
.implements Lorg/w3c/dom/events/MouseEvent;


# instance fields
.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:Z

.field public h:Z

.field public i:Z

.field public j:Z

.field public k:S

.field public l:Lorg/w3c/dom/events/EventTarget;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/xerces/dom/events/UIEventImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public getAltKey()Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/xerces/dom/events/MouseEventImpl;->h:Z

    return p0
.end method

.method public getButton()S
    .locals 0

    iget-short p0, p0, Lorg/apache/xerces/dom/events/MouseEventImpl;->k:S

    return p0
.end method

.method public getClientX()I
    .locals 0

    iget p0, p0, Lorg/apache/xerces/dom/events/MouseEventImpl;->e:I

    return p0
.end method

.method public getClientY()I
    .locals 0

    iget p0, p0, Lorg/apache/xerces/dom/events/MouseEventImpl;->f:I

    return p0
.end method

.method public getCtrlKey()Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/xerces/dom/events/MouseEventImpl;->g:Z

    return p0
.end method

.method public getMetaKey()Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/xerces/dom/events/MouseEventImpl;->j:Z

    return p0
.end method

.method public getRelatedTarget()Lorg/w3c/dom/events/EventTarget;
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/dom/events/MouseEventImpl;->l:Lorg/w3c/dom/events/EventTarget;

    return-object p0
.end method

.method public getScreenX()I
    .locals 0

    iget p0, p0, Lorg/apache/xerces/dom/events/MouseEventImpl;->c:I

    return p0
.end method

.method public getScreenY()I
    .locals 0

    iget p0, p0, Lorg/apache/xerces/dom/events/MouseEventImpl;->d:I

    return p0
.end method

.method public getShiftKey()Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/xerces/dom/events/MouseEventImpl;->i:Z

    return p0
.end method

.method public initMouseEvent(Ljava/lang/String;ZZLorg/w3c/dom/views/AbstractView;IIIIIZZZZSLorg/w3c/dom/events/EventTarget;)V
    .locals 0

    iput p6, p0, Lorg/apache/xerces/dom/events/MouseEventImpl;->c:I

    iput p7, p0, Lorg/apache/xerces/dom/events/MouseEventImpl;->d:I

    iput p8, p0, Lorg/apache/xerces/dom/events/MouseEventImpl;->e:I

    iput p9, p0, Lorg/apache/xerces/dom/events/MouseEventImpl;->f:I

    iput-boolean p10, p0, Lorg/apache/xerces/dom/events/MouseEventImpl;->g:Z

    iput-boolean p11, p0, Lorg/apache/xerces/dom/events/MouseEventImpl;->h:Z

    iput-boolean p12, p0, Lorg/apache/xerces/dom/events/MouseEventImpl;->i:Z

    iput-boolean p13, p0, Lorg/apache/xerces/dom/events/MouseEventImpl;->j:Z

    iput-short p14, p0, Lorg/apache/xerces/dom/events/MouseEventImpl;->k:S

    iput-object p15, p0, Lorg/apache/xerces/dom/events/MouseEventImpl;->l:Lorg/w3c/dom/events/EventTarget;

    invoke-super/range {p0 .. p5}, Lorg/apache/xerces/dom/events/UIEventImpl;->initUIEvent(Ljava/lang/String;ZZLorg/w3c/dom/views/AbstractView;I)V

    return-void
.end method
