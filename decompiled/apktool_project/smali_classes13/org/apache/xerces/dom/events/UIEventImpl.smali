.class public Lorg/apache/xerces/dom/events/UIEventImpl;
.super Lorg/apache/xerces/dom/events/EventImpl;
.source "SourceFile"

# interfaces
.implements Lorg/w3c/dom/events/UIEvent;


# instance fields
.field public a:Lorg/w3c/dom/views/AbstractView;

.field public b:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/xerces/dom/events/EventImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public getDetail()I
    .locals 0

    iget p0, p0, Lorg/apache/xerces/dom/events/UIEventImpl;->b:I

    return p0
.end method

.method public getView()Lorg/w3c/dom/views/AbstractView;
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/dom/events/UIEventImpl;->a:Lorg/w3c/dom/views/AbstractView;

    return-object p0
.end method

.method public initUIEvent(Ljava/lang/String;ZZLorg/w3c/dom/views/AbstractView;I)V
    .locals 0

    iput-object p4, p0, Lorg/apache/xerces/dom/events/UIEventImpl;->a:Lorg/w3c/dom/views/AbstractView;

    iput p5, p0, Lorg/apache/xerces/dom/events/UIEventImpl;->b:I

    invoke-super {p0, p1, p2, p3}, Lorg/apache/xerces/dom/events/EventImpl;->initEvent(Ljava/lang/String;ZZ)V

    return-void
.end method
