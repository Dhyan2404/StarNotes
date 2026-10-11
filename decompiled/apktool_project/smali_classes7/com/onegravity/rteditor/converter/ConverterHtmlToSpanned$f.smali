.class public Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned$f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "f"
.end annotation


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x80000000

    .line 2
    iput v0, p0, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned$f;->a:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned$a;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned$f;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned$f;Ljava/lang/String;)Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned$f;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned$f;->h(Ljava/lang/String;)Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned$f;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public b()Z
    .locals 0

    iget-object p0, p0, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned$f;->c:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public c()Z
    .locals 0

    iget-object p0, p0, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned$f;->b:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public d()Z
    .locals 0

    iget-object p0, p0, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned$f;->d:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public e()Z
    .locals 0

    iget p0, p0, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned$f;->a:I

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public f(Ljava/lang/String;)Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned$f;
    .locals 0

    iput-object p1, p0, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned$f;->c:Ljava/lang/String;

    return-object p0
.end method

.method public g(Ljava/lang/String;)Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned$f;
    .locals 0

    iput-object p1, p0, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned$f;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final h(Ljava/lang/String;)Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned$f;
    .locals 0

    iput-object p1, p0, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned$f;->d:Ljava/lang/String;

    return-object p0
.end method

.method public i(I)Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned$f;
    .locals 0

    iput p1, p0, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned$f;->a:I

    return-object p0
.end method
