.class public final synthetic Lcom/sunia/HTREnginev2/jqm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/w3c/dom/events/EventListener;


# instance fields
.field public final synthetic a:Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;

.field public final synthetic b:Lorg/w3c/dom/events/EventTarget;

.field public final synthetic c:[Lorg/w3c/dom/events/EventListener;

.field public final synthetic d:Lorg/apache/poi/poifs/crypt/dsig/SignatureMarshalListener;

.field public final synthetic e:Lorg/w3c/dom/Document;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;Lorg/w3c/dom/events/EventTarget;[Lorg/w3c/dom/events/EventListener;Lorg/apache/poi/poifs/crypt/dsig/SignatureMarshalListener;Lorg/w3c/dom/Document;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/jqm;->a:Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/jqm;->b:Lorg/w3c/dom/events/EventTarget;

    iput-object p3, p0, Lcom/sunia/HTREnginev2/jqm;->c:[Lorg/w3c/dom/events/EventListener;

    iput-object p4, p0, Lcom/sunia/HTREnginev2/jqm;->d:Lorg/apache/poi/poifs/crypt/dsig/SignatureMarshalListener;

    iput-object p5, p0, Lcom/sunia/HTREnginev2/jqm;->e:Lorg/w3c/dom/Document;

    return-void
.end method


# virtual methods
.method public final handleEvent(Lorg/w3c/dom/events/Event;)V
    .locals 6

    iget-object v0, p0, Lcom/sunia/HTREnginev2/jqm;->a:Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/jqm;->b:Lorg/w3c/dom/events/EventTarget;

    iget-object v2, p0, Lcom/sunia/HTREnginev2/jqm;->c:[Lorg/w3c/dom/events/EventListener;

    iget-object v3, p0, Lcom/sunia/HTREnginev2/jqm;->d:Lorg/apache/poi/poifs/crypt/dsig/SignatureMarshalListener;

    iget-object v4, p0, Lcom/sunia/HTREnginev2/jqm;->e:Lorg/w3c/dom/Document;

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;->d(Lorg/apache/poi/poifs/crypt/dsig/SignatureInfo;Lorg/w3c/dom/events/EventTarget;[Lorg/w3c/dom/events/EventListener;Lorg/apache/poi/poifs/crypt/dsig/SignatureMarshalListener;Lorg/w3c/dom/Document;Lorg/w3c/dom/events/Event;)V

    return-void
.end method
