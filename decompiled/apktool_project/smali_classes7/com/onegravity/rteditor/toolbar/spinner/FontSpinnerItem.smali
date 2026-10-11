.class public Lcom/onegravity/rteditor/toolbar/spinner/FontSpinnerItem;
.super Lcom/onegravity/rteditor/toolbar/spinner/SpinnerItem;
.source "SourceFile"


# instance fields
.field public final a:Lcom/onegravity/rteditor/fonts/RTTypeface;


# direct methods
.method public constructor <init>(Lcom/onegravity/rteditor/fonts/RTTypeface;)V
    .locals 1

    if-nez p1, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/onegravity/rteditor/fonts/RTTypeface;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-direct {p0, v0}, Lcom/onegravity/rteditor/toolbar/spinner/SpinnerItem;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onegravity/rteditor/toolbar/spinner/FontSpinnerItem;->a:Lcom/onegravity/rteditor/fonts/RTTypeface;

    return-void
.end method


# virtual methods
.method public getTypeface()Lcom/onegravity/rteditor/fonts/RTTypeface;
    .locals 0

    iget-object p0, p0, Lcom/onegravity/rteditor/toolbar/spinner/FontSpinnerItem;->a:Lcom/onegravity/rteditor/fonts/RTTypeface;

    return-object p0
.end method
