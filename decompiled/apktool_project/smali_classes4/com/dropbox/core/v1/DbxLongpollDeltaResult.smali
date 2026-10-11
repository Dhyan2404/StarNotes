.class public Lcom/dropbox/core/v1/DbxLongpollDeltaResult;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final Reader:Lcom/dropbox/core/json/JsonReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/dropbox/core/json/JsonReader<",
            "Lcom/dropbox/core/v1/DbxLongpollDeltaResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public backoff:J

.field public mightHaveChanges:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/dropbox/core/v1/DbxLongpollDeltaResult$a;

    invoke-direct {v0}, Lcom/dropbox/core/v1/DbxLongpollDeltaResult$a;-><init>()V

    sput-object v0, Lcom/dropbox/core/v1/DbxLongpollDeltaResult;->Reader:Lcom/dropbox/core/json/JsonReader;

    return-void
.end method

.method public constructor <init>(ZJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/dropbox/core/v1/DbxLongpollDeltaResult;->mightHaveChanges:Z

    iput-wide p2, p0, Lcom/dropbox/core/v1/DbxLongpollDeltaResult;->backoff:J

    return-void
.end method
