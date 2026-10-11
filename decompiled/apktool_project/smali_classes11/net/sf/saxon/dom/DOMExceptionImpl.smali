.class public Lnet/sf/saxon/dom/DOMExceptionImpl;
.super Lorg/w3c/dom/DOMException;
.source "SourceFile"


# static fields
.field public static final INVALID_ACCESS_ERR:S = 0xfs

.field public static final INVALID_MODIFICATION_ERR:S = 0xds

.field public static final INVALID_STATE_ERR:S = 0xbs

.field public static final NAMESPACE_ERR:S = 0xes

.field public static final SYNTAX_ERR:S = 0xcs


# instance fields
.field public code:S


# direct methods
.method public constructor <init>(SLjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    return-void
.end method
