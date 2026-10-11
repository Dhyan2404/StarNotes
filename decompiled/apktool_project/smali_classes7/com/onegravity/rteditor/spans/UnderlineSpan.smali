.class public Lcom/onegravity/rteditor/spans/UnderlineSpan;
.super Landroid/text/style/UnderlineSpan;
.source "SourceFile"

# interfaces
.implements Lcom/onegravity/rteditor/spans/RTSpan;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/text/style/UnderlineSpan;",
        "Lcom/onegravity/rteditor/spans/RTSpan<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/text/style/UnderlineSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public getValue()Ljava/lang/Boolean;
    .locals 0

    .line 2
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onegravity/rteditor/spans/UnderlineSpan;->getValue()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
