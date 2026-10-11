.class public Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned$i;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "i"
.end annotation


# static fields
.field public static final a:Lcom/onegravity/rteditor/converter/tagsoup/HTMLSchema;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onegravity/rteditor/converter/tagsoup/HTMLSchema;

    invoke-direct {v0}, Lcom/onegravity/rteditor/converter/tagsoup/HTMLSchema;-><init>()V

    sput-object v0, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned$i;->a:Lcom/onegravity/rteditor/converter/tagsoup/HTMLSchema;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()Lcom/onegravity/rteditor/converter/tagsoup/HTMLSchema;
    .locals 1

    sget-object v0, Lcom/onegravity/rteditor/converter/ConverterHtmlToSpanned$i;->a:Lcom/onegravity/rteditor/converter/tagsoup/HTMLSchema;

    return-object v0
.end method
