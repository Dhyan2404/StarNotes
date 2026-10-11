.class public Lcom/sun/org/apache/xerces/internal/dom/events/EventImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/w3c/dom/events/Event;


# instance fields
.field public bubbles:Z

.field public cancelable:Z

.field public currentTarget:Lorg/w3c/dom/events/EventTarget;

.field public eventPhase:S

.field public initialized:Z

.field public preventDefault:Z

.field public stopPropagation:Z

.field public target:Lorg/w3c/dom/events/EventTarget;

.field protected timeStamp:J

.field public type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/events/EventImpl;->type:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/dom/events/EventImpl;->initialized:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sun/org/apache/xerces/internal/dom/events/EventImpl;->bubbles:Z

    iput-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/dom/events/EventImpl;->cancelable:Z

    iput-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/dom/events/EventImpl;->stopPropagation:Z

    iput-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/dom/events/EventImpl;->preventDefault:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sun/org/apache/xerces/internal/dom/events/EventImpl;->timeStamp:J

    return-void
.end method


# virtual methods
.method public getBubbles()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sun/org/apache/xerces/internal/dom/events/EventImpl;->bubbles:Z

    return p0
.end method

.method public getCancelable()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sun/org/apache/xerces/internal/dom/events/EventImpl;->cancelable:Z

    return p0
.end method

.method public getCurrentTarget()Lorg/w3c/dom/events/EventTarget;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/dom/events/EventImpl;->currentTarget:Lorg/w3c/dom/events/EventTarget;

    return-object p0
.end method

.method public getEventPhase()S
    .locals 0

    iget-short p0, p0, Lcom/sun/org/apache/xerces/internal/dom/events/EventImpl;->eventPhase:S

    return p0
.end method

.method public getTarget()Lorg/w3c/dom/events/EventTarget;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/dom/events/EventImpl;->target:Lorg/w3c/dom/events/EventTarget;

    return-object p0
.end method

.method public getTimeStamp()J
    .locals 2

    iget-wide v0, p0, Lcom/sun/org/apache/xerces/internal/dom/events/EventImpl;->timeStamp:J

    return-wide v0
.end method

.method public getType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/dom/events/EventImpl;->type:Ljava/lang/String;

    return-object p0
.end method

.method public initEvent(Ljava/lang/String;ZZ)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/dom/events/EventImpl;->type:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/sun/org/apache/xerces/internal/dom/events/EventImpl;->bubbles:Z

    iput-boolean p3, p0, Lcom/sun/org/apache/xerces/internal/dom/events/EventImpl;->cancelable:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/sun/org/apache/xerces/internal/dom/events/EventImpl;->initialized:Z

    return-void
.end method

.method public preventDefault()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/dom/events/EventImpl;->preventDefault:Z

    return-void
.end method

.method public stopPropagation()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/dom/events/EventImpl;->stopPropagation:Z

    return-void
.end method
