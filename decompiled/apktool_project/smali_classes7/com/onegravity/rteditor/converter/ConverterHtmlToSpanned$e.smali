.class public Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned$e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation


# instance fields
.field public a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "left"

    iput-object v0, p0, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned$e;->a:Ljava/lang/String;

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned$e;->a:Ljava/lang/String;

    :cond_0
    return-void
.end method
