package com.dhyan.starnotes

import android.content.Intent
import android.os.Bundle
import android.text.Editable
import android.text.TextWatcher
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.*
import androidx.appcompat.app.AlertDialog
import androidx.appcompat.app.AppCompatActivity
import androidx.recyclerview.widget.LinearLayoutManager
import androidx.recyclerview.widget.RecyclerView
import com.dhyan.starnotes.data.Note
import com.dhyan.starnotes.data.NoteDatabaseHelper
import java.text.SimpleDateFormat
import java.util.*

class MainActivity : AppCompatActivity() {

    private lateinit var dbHelper: NoteDatabaseHelper
    private lateinit var recyclerView: RecyclerView
    private lateinit var emptyView: LinearLayout
    private lateinit var searchInput: EditText
    private lateinit var noteCountText: TextView
    private val notesList = mutableListOf<Note>()
    private lateinit var adapter: NotesAdapter

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)

        dbHelper = NoteDatabaseHelper(this)
        recyclerView = findViewById(R.id.notesRecyclerView)
        emptyView = findViewById(R.id.emptyLayout)
        searchInput = findViewById(R.id.searchEditText)
        noteCountText = findViewById(R.id.noteCountTextView)

        val btnNewTextNote = findViewById<Button>(R.id.btnNewTextNote)
        val btnNewDrawing = findViewById<Button>(R.id.btnNewDrawing)

        adapter = NotesAdapter(notesList,
            onItemClick = { note ->
                if (note.type == Note.TYPE_DRAWING) {
                    val intent = Intent(this, DrawingActivity::class.java).apply {
                        putExtra("note_id", note.id)
                    }
                    startActivity(intent)
                } else {
                    val intent = Intent(this, NoteEditorActivity::class.java).apply {
                        putExtra("note_id", note.id)
                    }
                    startActivity(intent)
                }
            },
            onItemLongClick = { note ->
                showDeleteDialog(note)
            }
        )

        recyclerView.layoutManager = LinearLayoutManager(this)
        recyclerView.adapter = adapter

        btnNewTextNote.setOnClickListener {
            startActivity(Intent(this, NoteEditorActivity::class.java))
        }

        btnNewDrawing.setOnClickListener {
            startActivity(Intent(this, DrawingActivity::class.java))
        }

        searchInput.addTextChangedListener(object : TextWatcher {
            override fun beforeTextChanged(s: CharSequence?, start: Int, count: Int, after: Int) {}
            override fun onTextChanged(s: CharSequence?, start: Int, before: Int, count: Int) {
                loadNotes(s.toString().trim())
            }
            override fun afterTextChanged(s: Editable?) {}
        })
    }

    override fun onResume() {
        super.onResume()
        loadNotes(searchInput.text.toString().trim())
    }

    private fun loadNotes(query: String = "") {
        notesList.clear()
        val loaded = dbHelper.getAllNotes(query)
        notesList.addAll(loaded)
        adapter.notifyDataSetChanged()

        if (notesList.isEmpty()) {
            emptyView.visibility = View.VISIBLE
            recyclerView.visibility = View.GONE
            noteCountText.text = "0 notes"
        } else {
            emptyView.visibility = View.GONE
            recyclerView.visibility = View.VISIBLE
            noteCountText.text = "${notesList.size} notes"
        }
    }

    private fun showDeleteDialog(note: Note) {
        AlertDialog.Builder(this)
            .setTitle("Delete Note")
            .setMessage("Are you sure you want to delete '${note.title}'?")
            .setPositiveButton("Delete") { _, _ ->
                dbHelper.deleteNote(note.id)
                loadNotes(searchInput.text.toString().trim())
                Toast.makeText(this, "Note deleted", Toast.LENGTH_SHORT).show()
            }
            .setNegativeButton("Cancel", null)
            .show()
    }

    class NotesAdapter(
        private val notes: List<Note>,
        private val onItemClick: (Note) -> Unit,
        private val onItemLongClick: (Note) -> Unit
    ) : RecyclerView.Adapter<NotesAdapter.NoteViewHolder>() {

        class NoteViewHolder(view: View) : RecyclerView.ViewHolder(view) {
            val titleView: TextView = view.findViewById(R.id.noteItemTitle)
            val previewView: TextView = view.findViewById(R.id.noteItemPreview)
            val dateView: TextView = view.findViewById(R.id.noteItemDate)
            val typeBadge: TextView = view.findViewById(R.id.noteItemTypeBadge)
        }

        override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): NoteViewHolder {
            val view = LayoutInflater.from(parent.context).inflate(R.layout.item_note, parent, false)
            return NoteViewHolder(view)
        }

        override fun onBindViewHolder(holder: NoteViewHolder, position: Int) {
            val note = notes[position]
            holder.titleView.text = if (note.title.isNotBlank()) note.title else "Untitled Note"
            holder.previewView.text = if (note.type == Note.TYPE_DRAWING) "Handwritten Sketch / Drawing" else note.content
            
            val dateFormat = SimpleDateFormat("MMM dd, yyyy · HH:mm", Locale.getDefault())
            holder.dateView.text = dateFormat.format(Date(note.updatedAt))

            if (note.type == Note.TYPE_DRAWING) {
                holder.typeBadge.text = "✏️ Canvas"
                holder.typeBadge.visibility = View.VISIBLE
            } else {
                holder.typeBadge.text = "📝 Text"
                holder.typeBadge.visibility = View.VISIBLE
            }

            holder.itemView.setOnClickListener { onItemClick(note) }
            holder.itemView.setOnLongClickListener {
                onItemLongClick(note)
                true
            }
        }

        override fun getItemCount() = notes.size
    }
}
