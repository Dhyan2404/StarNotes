.class public Lcom/onegravity/rteditor/spans/LinkSpan;
.super Landroid/text/style/URLSpan;
.source "SourceFile"

# interfaces
.implements Lcom/onegravity/rteditor/spans/RTSpan;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onegravity/rteditor/spans/LinkSpan$LinkSpanListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/text/style/URLSpan;",
        "Lcom/onegravity/rteditor/spans/RTSpan<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onegravity/rteditor/spans/LinkSpan;->getValue()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getValue()Ljava/lang/String;
    .locals 0

    .line 2
    invoke-virtual {p0}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    instance-of v0, p1, Lcom/onegravity/rteditor/spans/LinkSpan$LinkSpanListener;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/onegravity/rteditor/spans/LinkSpan$LinkSpanListener;

    invoke-interface {p1, p0}, Lcom/onegravity/rteditor/spans/LinkSpan$LinkSpanListener;->onClick(Lcom/onegravity/rteditor/spans/LinkSpan;)V

    :cond_0
    return-void
.end method
