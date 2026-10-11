package com.dhyan.starnotes.data

import android.content.ContentValues
import android.content.Context
import android.database.sqlite.SQLiteDatabase
import android.database.sqlite.SQLiteOpenHelper

class NoteDatabaseHelper(context: Context) : SQLiteOpenHelper(context, DATABASE_NAME, null, DATABASE_VERSION) {

    companion object {
        private const val DATABASE_NAME = "starnotes_local.db"
        private const val DATABASE_VERSION = 1

        const val TABLE_NOTES = "notes"
        const val COLUMN_ID = "id"
        const val COLUMN_TITLE = "title"
        const val COLUMN_CONTENT = "content"
        const val COLUMN_TYPE = "type"
        const val COLUMN_DRAWING_DATA = "drawing_data"
        const val COLUMN_COLOR = "color"
        const val COLUMN_CREATED_AT = "created_at"
        const val COLUMN_UPDATED_AT = "updated_at"
    }

    override fun onCreate(db: SQLiteDatabase) {
        val createTableQuery = """
            CREATE TABLE $TABLE_NOTES (
                $COLUMN_ID INTEGER PRIMARY KEY AUTOINCREMENT,
                $COLUMN_TITLE TEXT NOT NULL,
                $COLUMN_CONTENT TEXT,
                $COLUMN_TYPE TEXT DEFAULT 'text',
                $COLUMN_DRAWING_DATA TEXT,
                $COLUMN_COLOR INTEGER DEFAULT -1,
                $COLUMN_CREATED_AT INTEGER NOT NULL,
                $COLUMN_UPDATED_AT INTEGER NOT NULL
            )
        """.trimIndent()
        db.execSQL(createTableQuery)
    }

    override fun onUpgrade(db: SQLiteDatabase, oldVersion: Int, newVersion: Int) {
        db.execSQL("DROP TABLE IF EXISTS $TABLE_NOTES")
        onCreate(db)
    }

    fun insertNote(note: Note): Long {
        val db = writableDatabase
        val values = ContentValues().apply {
            put(COLUMN_TITLE, note.title)
            put(COLUMN_CONTENT, note.content)
            put(COLUMN_TYPE, note.type)
            put(COLUMN_DRAWING_DATA, note.drawingData)
            put(COLUMN_COLOR, note.color)
            put(COLUMN_CREATED_AT, note.createdAt)
            put(COLUMN_UPDATED_AT, note.updatedAt)
        }
        return db.insert(TABLE_NOTES, null, values)
    }

    fun updateNote(note: Note): Int {
        val db = writableDatabase
        val values = ContentValues().apply {
            put(COLUMN_TITLE, note.title)
            put(COLUMN_CONTENT, note.content)
            put(COLUMN_TYPE, note.type)
            put(COLUMN_DRAWING_DATA, note.drawingData)
            put(COLUMN_COLOR, note.color)
            put(COLUMN_UPDATED_AT, System.currentTimeMillis())
        }
        return db.update(TABLE_NOTES, values, "$COLUMN_ID = ?", arrayOf(note.id.toString()))
    }

    fun deleteNote(id: Long): Int {
        val db = writableDatabase
        return db.delete(TABLE_NOTES, "$COLUMN_ID = ?", arrayOf(id.toString()))
    }

    fun getNote(id: Long): Note? {
        val db = readableDatabase
        val cursor = db.query(
            TABLE_NOTES,
            null,
            "$COLUMN_ID = ?",
            arrayOf(id.toString()),
            null, null, null
        )
        return cursor.use {
            if (it.moveToFirst()) {
                Note(
                    id = it.getLong(it.getColumnIndexOrThrow(COLUMN_ID)),
                    title = it.getString(it.getColumnIndexOrThrow(COLUMN_TITLE)),
                    content = it.getString(it.getColumnIndexOrThrow(COLUMN_CONTENT)) ?: "",
                    type = it.getString(it.getColumnIndexOrThrow(COLUMN_TYPE)) ?: Note.TYPE_TEXT,
                    drawingData = it.getString(it.getColumnIndexOrThrow(COLUMN_DRAWING_DATA)),
                    color = it.getInt(it.getColumnIndexOrThrow(COLUMN_COLOR)),
                    createdAt = it.getLong(it.getColumnIndexOrThrow(COLUMN_CREATED_AT)),
                    updatedAt = it.getLong(it.getColumnIndexOrThrow(COLUMN_UPDATED_AT))
                )
            } else null
        }
    }

    fun getAllNotes(searchQuery: String = ""): List<Note> {
        val notes = mutableListOf<Note>()
        val db = readableDatabase
        val selection = if (searchQuery.isNotBlank()) {
            "$COLUMN_TITLE LIKE ? OR $COLUMN_CONTENT LIKE ?"
        } else null
        val selectionArgs = if (searchQuery.isNotBlank()) {
            val q = "%$searchQuery%"
            arrayOf(q, q)
        } else null

        val cursor = db.query(
            TABLE_NOTES,
            null,
            selection,
            selectionArgs,
            null, null,
            "$COLUMN_UPDATED_AT DESC"
        )

        cursor.use {
            while (it.moveToNext()) {
                notes.add(
                    Note(
                        id = it.getLong(it.getColumnIndexOrThrow(COLUMN_ID)),
                        title = it.getString(it.getColumnIndexOrThrow(COLUMN_TITLE)),
                        content = it.getString(it.getColumnIndexOrThrow(COLUMN_CONTENT)) ?: "",
                        type = it.getString(it.getColumnIndexOrThrow(COLUMN_TYPE)) ?: Note.TYPE_TEXT,
                        drawingData = it.getString(it.getColumnIndexOrThrow(COLUMN_DRAWING_DATA)),
                        color = it.getInt(it.getColumnIndexOrThrow(COLUMN_COLOR)),
                        createdAt = it.getLong(it.getColumnIndexOrThrow(COLUMN_CREATED_AT)),
                        updatedAt = it.getLong(it.getColumnIndexOrThrow(COLUMN_UPDATED_AT))
                    )
                )
            }
        }
        return notes
    }
}
