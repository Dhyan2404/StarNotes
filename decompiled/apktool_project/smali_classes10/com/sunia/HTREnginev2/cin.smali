.class public abstract Lcom/sunia/HTREnginev2/cin;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sunia/HTREnginev2/cin;->a:I

    return-void
.end method


# virtual methods
.method public abstract a(Lcom/twelvemonkeys/util/Time;)Ljava/lang/String;
.end method
