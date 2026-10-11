.class public Lcom/onegravity/rteditor/utils/io/input/ClosedInputStream;
.super Ljava/io/InputStream;
.source "SourceFile"


# static fields
.field public static final CLOSED_INPUT_STREAM:Lcom/onegravity/rteditor/utils/io/input/ClosedInputStream;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onegravity/rteditor/utils/io/input/ClosedInputStream;

    invoke-direct {v0}, Lcom/onegravity/rteditor/utils/io/input/ClosedInputStream;-><init>()V

    sput-object v0, Lcom/onegravity/rteditor/utils/io/input/ClosedInputStream;->CLOSED_INPUT_STREAM:Lcom/onegravity/rteditor/utils/io/input/ClosedInputStream;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public read()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method
