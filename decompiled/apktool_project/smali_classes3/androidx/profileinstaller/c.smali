.class public Landroidx/profileinstaller/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroidx/profileinstaller/FileSectionType;

.field public final b:I

.field public final c:[B

.field public final d:Z


# direct methods
.method public constructor <init>(Landroidx/profileinstaller/FileSectionType;I[BZ)V
    .locals 0
    .param p1    # Landroidx/profileinstaller/FileSectionType;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/profileinstaller/c;->a:Landroidx/profileinstaller/FileSectionType;

    iput p2, p0, Landroidx/profileinstaller/c;->b:I

    iput-object p3, p0, Landroidx/profileinstaller/c;->c:[B

    iput-boolean p4, p0, Landroidx/profileinstaller/c;->d:Z

    return-void
.end method
