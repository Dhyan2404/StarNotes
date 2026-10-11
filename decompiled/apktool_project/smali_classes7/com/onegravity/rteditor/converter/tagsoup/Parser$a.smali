.class public Lcom/onegravity/rteditor/converter/tagsoup/Parser$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/onegravity/rteditor/converter/tagsoup/AutoDetector;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onegravity/rteditor/converter/tagsoup/Parser;->p()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/onegravity/rteditor/converter/tagsoup/Parser;


# direct methods
.method public constructor <init>(Lcom/onegravity/rteditor/converter/tagsoup/Parser;)V
    .locals 0

    iput-object p1, p0, Lcom/onegravity/rteditor/converter/tagsoup/Parser$a;->a:Lcom/onegravity/rteditor/converter/tagsoup/Parser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public autoDetectingReader(Ljava/io/InputStream;)Ljava/io/Reader;
    .locals 0

    new-instance p0, Ljava/io/InputStreamReader;

    invoke-direct {p0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    return-object p0
.end method
