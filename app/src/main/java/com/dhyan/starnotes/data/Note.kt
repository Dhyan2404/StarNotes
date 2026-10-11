package com.dhyan.starnotes.data

data class Note(
    val id: Long = 0,
    val title: String,
    val content: String,
    val type: String = TYPE_TEXT, // "text" or "drawing"
    val drawingData: String? = null,
    val color: Int = 0xFFFFFFFF.toInt(),
    val createdAt: Long = System.currentTimeMillis(),
    val updatedAt: Long = System.currentTimeMillis()
) {
    companion object {
        const val TYPE_TEXT = "text"
        const val TYPE_DRAWING = "drawing"
    }
}
