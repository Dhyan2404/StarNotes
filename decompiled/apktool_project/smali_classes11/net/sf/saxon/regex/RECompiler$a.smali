.class public Lnet/sf/saxon/regex/RECompiler$a;
.super Lnet/sf/saxon/regex/charclass/SingletonCharacterClass;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/regex/RECompiler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final synthetic b:Lnet/sf/saxon/regex/RECompiler;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/regex/RECompiler;I)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/regex/RECompiler$a;->b:Lnet/sf/saxon/regex/RECompiler;

    invoke-direct {p0, p2}, Lnet/sf/saxon/regex/charclass/SingletonCharacterClass;-><init>(I)V

    return-void
.end method
